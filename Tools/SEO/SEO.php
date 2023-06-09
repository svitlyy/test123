<?php

namespace Tools\SEO;

Class SEO
{

    //i--- SEO texts for URLs ; inside_seo ; torrison ; 01.05.2020 ; 1 ---/
    var $seo_data = Array(
        Array(
            'page_url' => '/',
            'seo_title' => 'NN Apps',
            'seo_description' => 'NN Apps web system',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ua/',
            'seo_title' => 'NN Apps',
            'seo_description' => 'NN Apps система',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ru/',
            'seo_title' => 'NN Apps',
            'seo_description' => 'NN Apps система',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/auth/page/login',
            'seo_title' => 'Auth',
            'seo_description' => 'Auth System Login Page',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ua/auth/page/login',
            'seo_title' => 'Аутентіфікація',
            'seo_description' => 'Сторінка входу',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ru/auth/page/login',
            'seo_title' => 'Аутентификация',
            'seo_description' => 'Страница входа',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/auth/page/profile',
            'seo_title' => 'Profile',
            'seo_description' => 'Auth System Profile Page',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ua/auth/page/profile',
            'seo_title' => 'Профіль',
            'seo_description' => 'Сторінка користувача',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ru/auth/page/profile',
            'seo_title' => 'Профиль',
            'seo_description' => 'Страница пользователя',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/content/page/contacts',
            'seo_title' => 'Сontacts',
            'seo_description' => 'Auth System Сontacts',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ua/content/page/contacts',
            'seo_title' => 'Зв\'язок ',
            'seo_description' => 'Сторінка користувача',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ru/content/page/contacts',
            'seo_title' => 'Контакты',
            'seo_description' => 'Страница контактов',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/website/main/privacy',
            'seo_title' => 'Privacy Usage Agreement',
            'seo_description' => 'Privacy Usage Agreement',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ua/website/main/privacy',
            'seo_title' => 'Privacy Usage Agreement',
            'seo_description' => 'Privacy Usage Agreement',
            'seo_keywords' => '',
        ),
        Array(
            'page_url' => '/ru/website/main/privacy',
            'seo_title' => 'Privacy Usage Agreement',
            'seo_description' => 'Privacy Usage Agreement',
            'seo_keywords' => '',
        ),
    );

    //i--- Add SEO data method ; inside_seo ; torrison ; 01.05.2020 ; 2 ---/
    public function add_page_seo_data() {

        $res = Array();
        $current_url = $GLOBALS['app']['translate']['uri_prefix'].$GLOBALS['app']['routing']['clear_uri'];

        foreach ($this->seo_data as $row) {
            if ($row['page_url'] == $current_url) $res = $row;
        }

        if (!isset($res['seo_title'])) $res['seo_title'] = $current_url;
        if (!isset($res['seo_description'])) $res['seo_description'] = $current_url;
        if (!isset($res['seo_keywords'])) $res['seo_keywords'] = $current_url;

        return $res;

    }
}
