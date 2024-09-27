<?php
class Controller{
    public function Model($model){
        require_once "./PHAT/Model/".$model.".php";
        return new $model;
    }

    public function View($view,$data=[]){
        require_once "./PHAT/View/".$view.".php";
        
    }

}
?>