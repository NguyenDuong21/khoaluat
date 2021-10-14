<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 24-06-2011 10:35
 */
if (!defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}
$xtpl = new XTemplate('manage_type.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('GLANG', $lang_global);
$xtpl->assign('rowcontent', $rowcontent);
$xtpl->assign('ISCOPY', $copy);
$xtpl->assign('NV_BASE_ADMINURL', NV_BASE_ADMINURL);
$xtpl->assign('NV_NAME_VARIABLE', NV_NAME_VARIABLE);
$xtpl->assign('NV_OP_VARIABLE', NV_OP_VARIABLE);
$xtpl->assign('MODULE_NAME', $module_name);
$xtpl->assign('MODULE_DATA', $module_data);
$xtpl->assign('OP', $op);

$page_title = "Quản lý thể loại";
if($nv_Request->get_title('them', 'post'))
{
    $value = $nv_Request->get_title('tentheloai', 'post');
    $xtpl->assign('tentheloai',$value);  
    $sql = "INSERT INTO `nv4_vi_music_cats`(`cat_name`, `add_time`, `update_time`) VALUES (:tentheloai,:add_time,:update_time)";
    $sth = $db->prepare($sql);
    $sth->bindParam("tentheloai",$value);
    $sth->bindValue("add_time",time());
    $sth->bindValue("update_time",time());
    $ext = $sth->execute();
    if($ext)
    {
        $err[] = "Insert OK";
    } else {
        $err[] = "Không insert được";
    }
} else if($nv_Request->get_title('sua', 'post'))
{
    $id = $nv_Request->get_title('id_cat', 'post');
    $name_cat = $nv_Request->get_title('tentheloai', 'post');
    $sql = "UPDATE `nv4_vi_music_cats` SET cat_name=:cat_name,update_time=:update_time WHERE id=:id";
    $sth = $db->prepare($sql);
    $sth->bindParam("cat_name",$name_cat);
    $sth->bindParam("id",$id);
    $sth->bindValue("update_time",time());
    $ext = $sth->execute();
    if($ext)
    {
        $err[] = "update OK";
    } else {
        $err[] = "Không update được";
    }
} else if($nv_Request->get_title('delete', 'post'))
{
    $id = $nv_Request->get_title('delete', 'post');
    $sql = "DELETE FROM `nv4_vi_music_cats` WHERE id=:id";
    $sth = $db->prepare($sql);
    $sth->bindParam("id",$id);
    $ext = $sth->execute();
    if($ext)
    {
        $err[] = "update OK";
    } else {
        $err[] = "Không update được";
    }
}

$query = "SELECT * FROM nv4_vi_music_cats ORDER BY add_time";

$result = $db->query($query);
while ($row = $result->fetch()) {
    $xtpl->assign('categories', array(
        'id' => $row['id'],
        'cat_name' => $row['cat_name'],
        'add_time' => date('d/m/Y', $row['add_time']),
        'update_time' =>  date('d/m/Y', $row['update_time'])
    ));
    $xtpl->parse('main.loop_categories');
}

$xtpl->parse('main');
$contents = $xtpl->text('main');
include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
