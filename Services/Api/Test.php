<?php
namespace Services\Api;

Class Test extends \Tools\CommonCore\SmartWebsiteService {
    var $api_log_table = 'api_log';
    
    
        public function index(){  //возможно правильней не index
            $data['id'] = 0;
            $data['time'] = time();           
            $data['remote_addr'] = $_SERVER["REMOTE_ADDR"];
            if ($_SERVER["REQUEST_METHOD"]=="POST") {
                $data['type'] = 'POST';
                $data['query'] = json_encode($_POST);
                $this->db->insert($this->api_log_table, $data);
            }
            if ($_SERVER["REQUEST_METHOD"]=="GET") {
                $data['type'] = 'GET';
                $data['query'] = json_encode($_GET);
                $this->db->insert($this->api_log_table, $data);
            }
            $result['status'] = "success";
            $this->response->echo_json_free($result);
        } 
   
}