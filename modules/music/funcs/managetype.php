<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Apr 20, 2010 10:47:41 AM
 */
session_start();

if (!isset($_SESSION['user_login'])) {
    header("Location: " . NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA . "&" . "nv=users&op=login");
}

if (!defined('NV_IS_MOD_MUSIC')) {
    die('Stop!!!');
}

if ($nv_Request->get_title('diem', 'post')) {
    $diem = $nv_Request->get_title('diem', 'post');
    $username = $_SESSION['user_login'];
    $sql = "INSERT INTO nv4_vi_music_game_max_results(`username`, `diem`, `timeupdate`) VALUES (:username,:diem,:timeupdate)";
    $sth = $db->prepare($sql);
    $sth->bindParam("diem", $diem);
    $sth->bindParam("timeupdate", time());
    $sth->bindParam("username", $username);
    $ext = $sth->execute();
    if ($ext) {
        echo "success";
    }
    exit();
}

$xtpl = new XTemplate('managetype.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->parse('main');
$contents = $xtpl->text('main');
include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
