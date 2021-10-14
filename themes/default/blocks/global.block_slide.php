<?php

/**
 * @Project NUKEVIET 4.x
 * @Author Mr.Thinh (thinhwebhp@gmail.com)
 * @Copyright (C) 2014 Mr.Thinh. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Tuesday, 21 June 2016 12:41:32 GMT
 */

if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (! nv_function_exists('nv_theme_contact')) {
    function nv_theme_contact_config($module, $data_block, $lang_block)
    {
        $html = '<div class="form-group">';
    	$html .= '<label class="control-label col-sm-6">' . $lang_block['name'] . ': </label>';
        $html .= '<div class="col-sm-18"><input type="text" name="config_name" class="form-control" value="' . $data_block['name'] . '"/></div><div/>';
		
        $html .= '<div class="form-group">';
    	$html .= '<label class="control-label col-sm-6">' . $lang_block['url'] . ': </label>';
        $html .= '<div class="col-sm-18"><input type="text" name="config_name" class="form-control" value="' . $data_block['url'] . '"/></div><div/>';

        return $html;
    }

    function nv_theme_contact_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
		$return['config']['name'] = $nv_Request->get_title('config_name', 'post');
		$return['config']['url'] = $nv_Request->get_title('config_url', 'post');
        return $return;
    }

    function nv_theme_contact($block_config)
    {
        global $global_config, $site_mods, $lang_global, $lang_block;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.block_slide.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.block_slide.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'slide';
        }
        $array_slide_content = array(
            array(
                'title' => 'Trường Đại học Mở Hà Nội hỗ trợ tỉnh Bắc Giang chống dịch Covid-19',
                'image' => 'http://khoatiengtrungquoc.hou.edu.vn/files/anhtintuc/343.jpg',
                'link' => 'http://khoatiengtrungquoc.hou.edu.vn/tin-tuc/truong-dai-hoc-mo-ha-noi-ho-tro-tinh-bac-giang-chong-dich-covid-19_343/'
            ),
            array(
                'title' => 'SINH VIÊN KHOA TIẾNG TRUNG QUỐC ĐẠT THÀNH TÍCH TỐT TẠI VÒNG CHUNG KẾT CUỘC THI OLYMPIC TIN HỌC- TIẾNG ANH KHÔNG CHUYÊN LẦN THỨ X-NĂM 2021',
                'image' => 'http://khoatiengtrungquoc.hou.edu.vn/files/anhtintuc/337.jpg',
                'link' => 'http://khoatiengtrungquoc.hou.edu.vn/tin-tuc/sinh-vien-khoa-tieng-trung-quoc-dat-thanh-tich-tot-tai-vong-chung-ket-cuoc-thi-olympic-tin-hoc-tieng-anh-khong-chuyen-lan-thu-x-nam-2021_337/'
            ),
            array(
                'title' => '242 sinh viên tham gia Vòng loại Cuộc thi Olympic Tin học, Tiếng Anh không chuyên năm 2021',
                'image' => 'http://khoatiengtrungquoc.hou.edu.vn/files/anhtintuc/334.jpg',
                'link' => 'http://khoatiengtrungquoc.hou.edu.vn/tin-tuc/242-sinh-vien-tham-gia-vong-loai-cuoc-thi-olympic-tin-hoc-tieng-anh-khong-chuyen-nam-2021_334/'
            )
        );
        $array_bottom_content = array(
            array(
                'title' => 'Hoạt động thu hút nhân tài Việt Nam theo hình thức trực tuyến năm 2021',
                'image' => 'http://khoatiengtrungquoc.hou.edu.vn/files/anhtintuc/345.jpg',
                'link' => 'http://khoatiengtrungquoc.hou.edu.vn/tin-tuc/hoat-dong-thu-hut-nhan-tai-viet-nam-theo-hinh-thuc-truc-tuyen-nam-2021_345/'
            ),
            array(
                'title' => 'Ngày thế giới và quốc gia phòng chống mua bán người 30/7/2021',
                'image' => 'http://khoatiengtrungquoc.hou.edu.vn/files/anhtintuc/348.jpg',
                'link' => 'http://khoatiengtrungquoc.hou.edu.vn/tin-tuc/ngay-the-gioi-va-quoc-gia-phong-chong-mua-ban-nguoi-30-7-2021_348/'
            ),
            array(
                'title' => 'Tăng cường phòng, chống dịch bệnh Covid-19',
                'image' => 'http://khoatiengtrungquoc.hou.edu.vn/files/anhtintuc/347.jpg',
                'link' => 'http://khoatiengtrungquoc.hou.edu.vn/tin-tuc/tang-cuong-phong-chong-dich-benh-covid-19_347/'
            )
        );
        $xtpl = new XTemplate('global.block_slide.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('LANG', $lang_block);
        $xtpl->assign('TEMPLATE', $block_theme);
        $xtpl->assign('DATA', $block_config);
		foreach ($array_slide_content as $row) {
            $xtpl->assign('slide', $row);
            $xtpl->parse('main.loop_slide');
        }
        foreach ($array_bottom_content as $row) {
            $xtpl->assign('new', $row);
            $xtpl->parse('main.loop_news');
        }
        // if (! empty($block_config['name'])) {
        //     $xtpl->parse('main.name');
        // }
		// if (! empty($block_config['url'])) {
        //     $xtpl->parse('main.url');
        // }
        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_theme_contact($block_config);
}
