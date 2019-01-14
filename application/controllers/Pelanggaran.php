<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelanggaran extends CI_Controller {
	private $parents = "Pelanggaran";
	private $con = "pelanggaran";
	function __construct(){
		parent::__construct();
		get_breadcrumb();
		$this->load->model('M_main');
	}
	function secure($url){
		$data	= $this->mza_secureurl->setSecureUrl_decode($url);
		if($data != false){
			if (method_exists($this, trim($data['function']))){
				if(!empty($data['params'])){
					return call_user_func_array(array($this, trim($data['function'])), $data['params']);
				}else{
					return $this->$data['function']();
				}
			}
		}
		show_404();
	}
	public function index(){
		$data['title'] = $this->parents.' | '.get_apl('nama_sistem');
		$data['cumb_up'] = $this->parents;
		
		$this->breadcrumb->append_crumb(get_apl('nama_sistem'), $this->mza_secureurl->setSecureUrl_encode('Dashboard','index'));
		$this->breadcrumb->append_crumb($this->parents, $this->mza_secureurl->setSecureUrl_encode($this->con,'index'));

		$data['pelanggaran'] = $this->M_main->get_where('pelanggaran','status_pelanggaran',1)->result();

		$data['menu1']='masterdata';
		$data['menu2']='pelanggaran';
		$data['content'] = 'pelanggaran/list-pelanggaran.php';
		$this->load->view('admin/template',$data);
	}

	public function add(){
		if($this->input->post('nama')){
			$this->form_validation->set_rules('nama', 'nama', 'trim|required');
			$this->form_validation->set_rules('idkategori', 'id_kategori', 'trim|required');
			$this->form_validation->set_rules('point', 'point', 'trim|required');
			if ($this->form_validation->run() == FALSE) {
				$this->session->set_flashdata('error','Data gagal di simpan!');
				redirect(site_url($this->mza_secureurl->setSecureUrl_encode($this->con,'index')),'refresh');
			} else {
				$data=array(
					"nama_pelanggaran"=>filter_string($this->input->post('nama',TRUE)),
					"id_kategori_pelanggaran"=>filter_string($this->input->post('idkategori',TRUE)),
					"point_pelanggaran"=>filter_string($this->input->post('point',TRUE)),
					"status_pelanggaran"=>1,
				);
				$this->M_main->insert('pelanggaran', $data);

				$datalama = "";
				$databaru = $data['nama_pelanggaran'].' <br> '.$data['id_kategori_pelanggaran'].'<br> '.$data['point_pelanggaran'];
				// history($id_dikenai,$menu,$kegiatan,$datalama,$databaru,$idriwayat)
				history('',$this->parents,'Menambah Data',$datalama,$databaru,'');
				
				$this->session->set_flashdata('success','Berhasil menambahkan data pelanggaran baru!');
				redirect(site_url($this->mza_secureurl->setSecureUrl_encode($this->con,'index')),'refresh');
			}
		}
		
		$data['kategori'] = $this->M_main->get_where('kategori_pelanggaran','status_kategori_pelanggaran',1)->result();

		$this->load->view('admin/pelanggaran/add-pelanggaran.php',$data);
	}
	public function delete(){
		if($this->input->post('id_')){
			$this->form_validation->set_rules('id_', 'id_', 'trim|required');
			if ($this->form_validation->run() == FALSE) {
				$this->session->set_flashdata('error','Gagal menghapus data ini!');
				redirect(site_url($this->mza_secureurl->setSecureUrl_encode('kategoripelanggaran','index')),'refresh');
			} else {
				$row=$this->M_main->get_where('pelanggaran','id_pelanggaran',$this->input->post('id_'))->row_array();
				
				$this->db->where('id_pelanggaran', $this->input->post('id_'));
				$this->db->delete('pelanggaran');
				
				history('',$this->parents,'Menghapus Data','','',$this->input->post('id_'));
				
				$this->session->set_flashdata('success','Berhasil menghapus data : '.$row['nama_kategori_kategori_pelanggaran']);
				redirect(site_url($this->mza_secureurl->setSecureUrl_encode('kategoripelanggaran','index')),'refresh');
			}
		}
		$data['row']=$this->M_main->get_where('pelanggaran','id_pelanggaran',$this->input->post('id'))->row_array();
		$this->load->view('admin/pelanggaran/delete-pelanggaran.php',$data);
	}

	public function update(){
		if($this->input->post('id_')){
			$this->form_validation->set_rules('id_', 'id_', 'trim|required');
			if ($this->form_validation->run() == FALSE) {
				$this->session->set_flashdata('error','Gagal mengedit data ini!');
				redirect(site_url($this->mza_secureurl->setSecureUrl_encode('kategoripelanggaran','index')),'refresh');
			} else {
				$row=$this->M_main->get_where('kategori_pelanggaran','id_kategori_pelanggaran',$this->input->post('id_'))->row_array();

				$update = array(
			        "nama_kategori_kategori_pelanggaran"=>filter_string($this->input->post('nama',TRUE)),
				);
				$this->db->where('id_kategori_pelanggaran', $this->input->post('id_'));
				$this->db->update('kategori_pelanggaran', $update);

				// $id_dikenai,$menu,$kegiatan,$datalama,$databaru,$idriwayat

				history('',$this->parents,'Mengedit Data',$row['nama_kategori_kategori_pelanggaran'],$update['nama_kategori_kategori_pelanggaran'],$this->input->post('id_'));
				
				$this->session->set_flashdata('success','Berhasil mengedit data : '.$row['nama_kategori_kategori_pelanggaran']);
				redirect(site_url($this->mza_secureurl->setSecureUrl_encode('kategoripelanggaran','index')),'refresh');
			}
		}

		$data['kategori'] = $this->M_main->get_where('kategori_pelanggaran','status_kategori_pelanggaran',1)->result();

		$data['row']=$this->M_main->get_where('pelanggaran','id_pelanggaran',$this->input->post('id'))->row_array();

		$this->load->view('admin/pelanggaran/update-pelanggaran.php',$data);
	}
}