<?php

namespace Tools\InsideAutoTables\Tables;

Class Api_log
{
    var $table_config;
    var $table_columns;
    var $db_table_name = 'api_log';
   

    public function init()
    {

    

        $i = 0;
        $table_columns[$i]['name'] = 'id';
        $table_columns[$i]['text'] = 'id';
        $table_columns[$i]['input_type'] = 'text';
        $table_columns[$i]['tab'] = 'main';
        $table_columns[$i]['column_width'] = '100';
        $table_columns[$i]['in_crud'] = true;
        
        $i++;
        $table_columns[$i]['name'] = 'time';
        $table_columns[$i]['text'] = 'time';
        $table_columns[$i]['tab'] = 'main';
        $table_columns[$i]['input_type'] = 'text';
        $table_columns[$i]['column_width'] = '100';
        $table_columns[$i]['in_crud'] = true;

        $i++;
        $table_columns[$i]['name'] = 'query';
        $table_columns[$i]['text'] = 'query';
        $table_columns[$i]['tab'] = 'main';
        $table_columns[$i]['input_type'] = 'textarea';
        $table_columns[$i]['column_width'] = '100';
        $table_columns[$i]['in_crud'] = true;

        $i++;
        $table_columns[$i]['name'] = 'remote_addr';
        $table_columns[$i]['text'] = 'remote_addr';
        $table_columns[$i]['tab'] = 'main';
        $table_columns[$i]['input_type'] = 'text';
        $table_columns[$i]['column_width'] = '100';
        $table_columns[$i]['in_crud'] = true;
       
        $i++;
        $table_columns[$i]['name'] = 'type';
        $table_columns[$i]['text'] = 'type';
        $table_columns[$i]['tab'] = 'main';
        $table_columns[$i]['input_type'] = 'text';
        $table_columns[$i]['column_width'] = '100';
        $table_columns[$i]['in_crud'] = true;
        $table_config['key'] = 'id';
      
        $table_config['cell_tabs_arr'] = Array (
            'main' => 'Main',
        );

        $this->table_config = $table_config;
        $this->table_columns = $table_columns;
    }
}