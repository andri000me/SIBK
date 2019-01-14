<!-- /**
 * @Author: Moch Faizal Ansyori
 * @Date:   2017-06-11 22:45:10
 * @Last Modified by:   Moch Faizal Ansyori
 * @Last Modified time: 2017-07-09 21:42:29
 */
 -->

   <!-- BEGIN SIDEBAR -->
      <div class="sidebar-scroll">
        <div id="sidebar" class="nav-collapse collapse">
         <!-- BEGIN SIDEBAR MENU -->
          <ul class="sidebar-menu">
              <li class="sub-menu <?php if ($menu1=='dashboard'){echo 'active';} ?>">
                  <a  href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('Dashboard','index')); ?>">
                      <i class="icon-dashboard"></i>
                      <span>Dashboard</span>
                  </a>
              </li>
              <?php if ($this->session->userdata('sess_akses')=="AD") { ?>
                <li class="sub-menu <?php if ($menu1=='masterdata'){echo 'active open';} ?>">
                      <a href="javascript:;" class="">
                          <i class="icon-tasks"></i>
                          <span>Master Data</span>
                          <span class="arrow <?php if ($menu1=='masterdata'){echo 'active open';} ?>"></span>
                      </a>
                      <ul class="sub">
                          <li class="<?php if ($menu2=='guru'){echo 'active';} ?>">
                            <a class="" href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('Guru','index')); ?>">Guru</a>
                          </li>
                          <li class="<?php if ($menu2=='kelas'){echo 'active';} ?>">
                            <a class="" href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('Kelas','index')); ?>">Kelas</a>
                          </li>
                          <li class="<?php if ($menu2=='jurusan'){echo 'active';} ?>">
                            <a class="" href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('Jurusan','index')); ?>">Jurusan</a>
                          </li>
                          
                          <li class="<?php if ($menu2=='kategoripelanggaran'){echo 'active';} ?>">
                            <a class="" href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('kategoripelanggaran','index')); ?>">Kategori Pelanggaran</a>
                          </li>
                          <li class="<?php if ($menu2=='pelanggaran'){echo 'active';} ?>">
                            <a class="" href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('Pelanggaran','index')); ?>">Pelanggaran</a>
                          </li>
                      </ul>
                  </li>
                  <li class="sub-menu <?php if ($menu1=='kelasjurusan'){echo 'active';} ?>">
                    <a  href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('Kelasjurusan','index')); ?>">
                      <i class="icon-star-half-empty"></i>
                      <span>Kelas Jurusan</span>
                    </a>
                  </li>
                  <li class="sub-menu <?php if ($menu1=='siswa'){echo 'active';} ?>">
                    <a  href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('siswa','index')); ?>">
                      <i class="icon-user"></i>
                      <span>Siswa</span>
                    </a>
                  </li>
                <?php } ?>
                  <?php if ($this->session->userdata('sess_akses')=="GR") { ?>
                    <li class="sub-menu <?php if ($menu1=='pelanggaransiswa'){echo 'active';} ?>">
                      <a  href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('pelanggaransiswa','index')); ?>">
                        <i class="icon-unlock-alt"></i>
                        <span>Pelanggaran Siswa</span>
                      </a>
                    </li>
                  <?php } ?>
                  <?php if ($this->session->userdata('sess_akses')=="OT") { ?>
                    <li class="sub-menu <?php if ($menu1=='anakku'){echo 'active';} ?>">
                      <a  href="<?php echo site_url($this->mza_secureurl->setSecureUrl_encode('Anakku','index')); ?>">
                        <i class="icon-user-md"></i>
                        <span>Anakku</span>
                      </a>
                    </li>
                  <?php } ?>
                  <?php if ($this->session->userdata('sess_siswa')=="1") { ?>
                    <li class="sub-menu <?php if ($menu1=='pelanggaranku'){echo 'active';} ?>">
                      <a onclick="detail('<?= $this->session->userdata('sess_user'); ?>')" href="javascript:void(0)">
                        <i class="icon-unlock-alt"></i>
                        <span>Pelanggaranku</span>
                      </a>
                    </li>
                  <?php } ?>
          </ul>
         <!-- END SIDEBAR MENU -->
      </div>
      </div>
<script>
   function detail(id) {
    // $("#loading").fadeIn();
    $.ajax({
         url:"<?=site_url('pelanggaransiswa/detailpelanggaran')?>",
         type:"POST",
         data:'id='+id,
         success:function(data){
            // $("#loading").fadeOut('slow');
            $("#modal_crud").html(data);
            $("#delete").modal("show");
         }
      });
   }
</script>
      <!-- END SIDEBAR -->