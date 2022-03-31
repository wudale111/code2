<?php
namespace Home\Controller;
class IndexController extends CommonController {
    public function index(){
    	$goods=D('goods');
    	$bestgoods=$goods->getrecgoods(3,5); //精品推荐商品  	
    	$hotgoods=$goods->getrecgoods(2,5); //热卖推荐商品  	
    	$newgoods=$goods->getrecgoods(7,5); //最新推荐商品  	
    	$cheapgoods=$goods->getrecgoods(5,4); //特价推荐商品 
        $cate=D('cate');
        $reccatesres=$cate->getreccates(8,9,3);//首页大分类推荐位 8：首页大分类推荐位id 9:首页大分类商品推荐位id 3:限定显示的数量
        $navres=$cate->getnav();
    	$this->assign(array(
    		'bestgoods'=>$bestgoods,
    		'hotgoods'=>$hotgoods,
    		'newgoods'=>$newgoods,
    		'cheapgoods'=>$cheapgoods,
            'reccatesres'=>$reccatesres,
            'navres'=>$navres,
    		));	
       $this->display();
    }

    public function sendmial(){
        $send=SendMail('tongpan0@163.com','测试邮件','欢迎光临美丽说商城，点击一下链接验证账号。');
        dump($send);
    }
}