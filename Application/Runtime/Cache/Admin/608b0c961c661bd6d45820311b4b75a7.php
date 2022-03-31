<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html><head>
        <meta charset="utf-8">
    <title>童老师ThinkPHP交流群：484519446</title>

    <meta name="description" content="Dashboard">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--Basic Styles-->
    <link href="http://127.0.0.1/shop/Application/Admin/Public/style/bootstrap.css" rel="stylesheet">
    <link href="http://127.0.0.1/shop/Application/Admin/Public/style/font-awesome.css" rel="stylesheet">
    <link href="http://127.0.0.1/shop/Application/Admin/Public/style/weather-icons.css" rel="stylesheet">

    <!--Beyond styles-->
    <link id="beyond-link" href="http://127.0.0.1/shop/Application/Admin/Public/style/beyond.css" rel="stylesheet" type="text/css">
    <link href="http://127.0.0.1/shop/Application/Admin/Public/style/demo.css" rel="stylesheet">
    <link href="http://127.0.0.1/shop/Application/Admin/Public/style/typicons.css" rel="stylesheet">
    <link href="http://127.0.0.1/shop/Application/Admin/Public/style/animate.css" rel="stylesheet">
    <!-- 引入ueditor -->
    <script src="http://127.0.0.1/shop/Application/Admin/Public/ueditor/ueditor.config.js"></script>
    <script src="http://127.0.0.1/shop/Application/Admin/Public/ueditor/ueditor.all.min.js"></script>
    <script src="http://127.0.0.1/shop/Application/Admin/Public/ueditor/lang/zh-cn/zh-cn.js
"></script>
</head>
<body>
    <!-- 头部 -->
    <div class="navbar">
    <div class="navbar-inner">
        <div class="navbar-container">
            <!-- Navbar Barnd -->
            <div class="navbar-header pull-left">
                <a href="#" class="navbar-brand">
                    <small>
                            <img src="http://127.0.0.1/shop/Application/Admin/Public/images/logo.png" alt="">
                        </small>
                </a>
            </div>
            <!-- /Navbar Barnd -->
            <!-- Sidebar Collapse -->
            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="collapse-icon fa fa-bars"></i>
            </div>
            <!-- /Sidebar Collapse -->
            <!-- Account Area and Settings -->
            <div class="navbar-header pull-right">
                <div class="navbar-account">
                    <ul class="account-area">
                        <li>
                            <a class="login-area dropdown-toggle" data-toggle="dropdown">
                                <div class="avatar" title="View your public profile">
                                    <img src="http://127.0.0.1/shop/Application/Admin/Public/images/adam-jansen.jpg">
                                </div>
                                <section>
                                    <h2><span class="profile"><span><?php echo (session('uname')); ?></span></span></h2>
                                </section>
                            </a>
                            <!--Login Area Dropdown-->
                            <ul class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
                                <li class="username"><a>David Stevenson</a></li>
                                <li class="dropdown-footer">
                                    <a href="/shop/index.php/Admin/Admin/logout">
                                            退出登录
                                        </a>
                                </li>
                                <li class="dropdown-footer">
                                    <a href="/shop/index.php/Admin/Admin/edit/id/<?php echo (session('uid')); ?>">
                                            修改密码
                                        </a>
                                </li>
                            </ul>
                            <!--/Login Area Dropdown-->
                        </li>
                        <!-- /Account Area -->
                        <!--Note: notice that setting div must start right after account area list.
                            no space must be between these elements-->
                        <!-- Settings -->
                    </ul>
                </div>
            </div>
            <!-- /Account Area and Settings -->
        </div>
    </div>
</div>

    <!-- /头部 -->
    
    <div class="main-container container-fluid">
        <div class="page-container">
                        <!-- Page Sidebar -->
            <div class="page-sidebar" id="sidebar">
                <!-- Page Sidebar Header-->
                <div class="sidebar-header-wrapper">
                    <input class="searchinput" type="text">
                    <i class="searchicon fa fa-search"></i>
                    <div class="searchhelper">Search Reports, Charts, Emails or Notifications</div>
                </div>
                <!-- /Page Sidebar Header -->
                <!-- Sidebar Menu -->
                <ul class="nav sidebar-menu">
                    <!--Dashboard-->
                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-user"></i>
                            <span class="menu-text">管理员管理</span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="/shop/index.php/Admin/admin/lst">
                                    <span class="menu-text">管理员列表</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                        </ul>                            
                    </li> 

                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-shopping-cart"></i>
                            <span class="menu-text">商品模块</span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="/shop/index.php/Admin/Cate/lst">
                                    <span class="menu-text">分类管理</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/index.php/Admin/Brand/lst">
                                    <span class="menu-text">品牌管理</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/index.php/Admin/Goods/lst">
                                    <span class="menu-text">商品管理</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/index.php/Admin/Type/lst">
                                    <span class="menu-text">商品类型</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                        </ul>                            
                    </li> 

                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa  fa-hand-o-right"></i>
                            <span class="menu-text">导航设置</span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="/shop/index.php/Admin/Nav/lst">
                                    <span class="menu-text">导航管理</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                        </ul>                            
                    </li> 

                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa  fa-file-text-o"></i>
                            <span class="menu-text">文章模块</span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="/shop/index.php/Admin/Category/lst">
                                    <span class="menu-text">栏目管理</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/index.php/Admin/Article/lst">
                                    <span class="menu-text">文章管理</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                        </ul>                            
                    </li> 

                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa  fa-dashboard "></i>
                            <span class="menu-text">广告模块</span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="/shop/index.php/Admin/Adpos/lst">
                                    <span class="menu-text">广告位管理</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/index.php/Admin/Ad/lst">
                                    <span class="menu-text">广告管理</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                        </ul>                            
                    </li> 

                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-users"></i>
                            <span class="menu-text">会员模块</span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="/admin/user/index.html">
                                    <span class="menu-text">会员管理</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/index.php/Admin/MemberLevel/lst">
                                    <span class="menu-text">会员等级</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                        </ul>                            
                    </li> 

                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-thumbs-up"></i>
                            <span class="menu-text">推荐位</span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="/shop/index.php/Admin/Recpos/lst">
                                    <span class="menu-text">推荐位列表</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                        </ul>                            
                    </li> 

                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-cny"></i>
                            <span class="menu-text">订单管理</span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="/admin/user/index.html">
                                    <span class="menu-text">订单列表</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                        </ul>                            
                    </li> 

                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-gear"></i>
                            <span class="menu-text">系统管理</span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="/shop/index.php/Admin/Config/config">
                                    <span class="menu-text">站点配置</span>
                                    <i class="menu-expand"></i>
                                </a>
                                <a href="/shop/index.php/Admin/Config/lst">
                                    <span class="menu-text">配置列表</span>
                                    <i class="menu-expand"></i>
                                </a>
                            </li>
                        </ul>                            
                    </li>                        
                </ul>
                <!-- /Sidebar Menu -->
            </div>
            <!-- /Page Sidebar -->
            <!-- Page Content -->
            <div class="page-content">
                <!-- Page Breadcrumb -->
                <div class="page-breadcrumbs">
                    <ul class="breadcrumb">
                                        <li>
                        <a href="/shop/index.php/Admin/Index/index">系统</a>
                    </li>
                                        <li>
                        <a href="/shop/index.php/Admin/Goods/lst">商品列表</a>
                    </li>
                                        <li class="active">修改商品</li>
                                        </ul>
                </div>
                <!-- /Page Breadcrumb -->

                <!-- Page Body -->
                <div class="page-body">
                    
<div class="row">
    <div class="col-lg-12 col-sm-12 col-xs-12">
        <div class="widget">
            <div class="widget-header bordered-bottom bordered-blue">
                <span class="widget-caption">修改商品</span>
            </div>
            <div class="widget-body">
                <div id="horizontal-form">
                    <form class="form-horizontal" role="form" action="" method="post" enctype="multipart/form-data" >
                        <input type="hidden" name="id" value="<?php echo ($goods["id"]); ?>">
                        <!-- 111111111111111111111111111111111 -->
                        <div class="tabbable">
                            <ul id="myTab11" class="nav nav-tabs tabs-flat">
                                <li class="active">
                                    <a href="#home11" data-toggle="tab">
                                        基本信息
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#profile11" data-toggle="tab">
                                        商品描述
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#profile12" data-toggle="tab">
                                        会员价格
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#profile13" data-toggle="tab">
                                        商品属性
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#profile14" data-toggle="tab">
                                        商品图片
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content tabs-flat">
                                <div class="tab-pane active" id="home11">

                                   <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">商品名称</label>
                                        <div class="col-sm-6">
                                            <input type="text" name="goods_name" value="<?php echo ($goods["goods_name"]); ?>" placeholder="" class="form-control">
                                        </div>
                                        <p class="help-block col-sm-4 red">* 必填</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">商品缩略图</label>
                                        <div class="col-sm-6">
                                            <input type="file"  name="original" style="display:inline;">
                                            <?php if($goods['original'] == ''): ?>暂无缩略图
                                            <?php else: ?>
                                            <img src="/shop<?php echo ($goods["sm_thumb"]); ?>" height="24"><?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">所属分类</label>
                                        <div class="col-sm-6">
                                            <select name="cate_id">
                                                <option value="">请选择</option>
                                                <?php if(is_array($cateres)): $i = 0; $__LIST__ = $cateres;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option <?php if($vo['id'] == $goods['cate_id']): ?>selected<?php endif; ?> value="<?php echo ($vo["id"]); ?>"><?php if($vo['pid'] != 0): ?>|<?php endif; echo str_repeat('-', $vo['level']*8); echo ($vo["catename"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                            </select>
                                        </div>
                                        <p class="help-block col-sm-4 red">* 必填</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">所属品牌</label>
                                        <div class="col-sm-6">
                                            <select name="brand_id">
                                            <option>请选择</option>
                                            <?php if(is_array($brandres)): $i = 0; $__LIST__ = $brandres;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option <?php if($vo['id'] == $goods['brand_id']): ?>selected<?php endif; ?> value="<?php echo ($vo["id"]); ?>"><?php echo ($vo["brand_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">市场价格</label>
                                        <div class="col-sm-6">
                                            <input type="text" required="" name="market_price" value="<?php echo ($goods["market_price"]); ?> " placeholder=""  class="form-control" >
                                        </div>
                                        <p class="help-block col-sm-4 red">* 必填</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">本店价格</label>
                                        <div class="col-sm-6">
                                            <input type="text" required="" name="shop_price" value="<?php echo ($goods["shop_price"]); ?>" placeholder="" class="form-control" >
                                        </div>
                                        <p class="help-block col-sm-4 red">* 必填</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">商品重量</label>
                                        <div class="col-sm-6">
                                            <input type="text" required="" name="goods_weight" value="<?php echo ($goods["goods_weight"]); ?>" placeholder="" style="width:80%; float:left; margin-right:10px;" class="form-control" >
                                            <select name="weight_unit">
                                                <option <?php if($goods['weight_unit'] == 'g'): ?>selected="selected"<?php endif; ?> value="g">克</option>
                                                <option <?php if($goods['weight_unit'] == 'kg'): ?>selected="selected<?php endif; ?> value="kg">千克</option>
                                            </select>
                                        </div>
                                        <p class="help-block col-sm-4 red">* 必填</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">是否上架</label>
                                       <div class="col-sm-6">
                                           <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="onsale" <?php if($goods['onsale'] == 1): ?>checked="checked"<?php endif; ?> class="colored-success" />
                                                    <span class="text">上架</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">商品推荐</label>
                                       <div class="col-sm-6">
                                           <div class="checkbox">
                                                <?php if(is_array($recposres)): $i = 0; $__LIST__ = $recposres;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$recpos): $mod = ($i % 2 );++$i;?><label style="margin-right:15px;">
                                                        <input 
                                                        <?php if(in_array($recpos['id'],$recids)){echo'checked="checked"';}?>

                                                        type="checkbox" name="recid[]" value="<?php echo ($recpos["id"]); ?>"  class="colored-success">
                                                        <span class="text"><?php echo ($recpos["recname"]); ?></span>
                                                    </label><?php endforeach; endif; else: echo "" ;endif; ?>

                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="tab-pane" id="profile11">
                                    <textarea id="goods_desc" name="goods_desc"><?php echo ($goods["goods_desc"]); ?></textarea>
                                </div>

                                <div class="tab-pane" id="profile12">
                                    <?php if(is_array($levres)): $i = 0; $__LIST__ = $levres;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="form-group">
                                            <label class="col-sm-2 control-label no-padding-right" for="username"><?php echo ($vo["level_name"]); ?></label>
                                            <div class="col-sm-6">
                                                <input type="text"
                                                    <?php if(is_array($mpres)): foreach($mpres as $key=>$vo1): if($vo1['level_id'] == $vo['id']): ?>value="<?php echo ($vo1["price"]); ?>"<?php endif; endforeach; endif; ?>
                                                 name="mp[<?php echo ($vo["id"]); ?>]" class="form-control">
                                            </div>
                                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
                                </div>

                                <div class="tab-pane" id="profile13">
                                    <div class="form-group">
                                            <label class="col-sm-2 control-label no-padding-right" for="username">选择商品类型</label>
                                            <div class="col-sm-6">
                                               <select <?php if($goods['type_id'] != 0): ?>disabled="disabled"<?php endif; ?> name="type_id">
                                                   <option>选择商品类型</option>
                                                   <?php if(is_array($typeres)): $i = 0; $__LIST__ = $typeres;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option <?php if($goods['type_id'] == $vo['id']): ?>selected="selected"<?php endif; ?> value="<?php echo ($vo["id"]); ?>"><?php echo ($vo["type_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                               </select>
                                            </div>
                                    </div>
                                    <div id="attr">
                                        <?php if($attrres): foreach ($attrres as $k=>$v): ?>
                                        <?php if($v['attr_type'] == '1'): $_attr=explode(',', $v['attr_values']); foreach ($gattrres[$v['id']] as $k2 => $v2): ?>
                                            <div class='form-group' gaid=<?php echo $v2['id'];?>><label class='col-sm-2 control-label no-padding-right'><a href='javascript:;' onclick='attrad(this);'><?php if($k2==0){echo '[+]';}else{echo '[-]';}?></a><?php echo $v['attr_name'];?></label>
                                            <div class='col-sm-6'>
                                                <select name="old_goods_attr[<?php echo $v['id'];?>][]">
                                                    <option value="">请选择</option>
                                                    <?php foreach ($_attr as $k1 => $v1): if($v2['attr_value'] == $v1){ $selected='selected="selected"'; }else{ $selected=''; } ?>
                                                        <option value="<?php echo $v1;?>" <?php echo $selected;?>><?php echo $v1;?></option>
                                                    <?php endforeach;?>
                                                </select>
                                                <span>￥<input type='text' name='old_goods_price[<?php echo $v2['id'];?>]' value="<?php echo $v2['attr_price'];?>" style='padding:6px 12px; width:70px;' value='0' /> 元</span>
                                            </div>
                                            </div>
                                        <?php endforeach;?>
                                        <?php else: ?>
                                            <?php if($v['attr_values']): $_attr=explode(',', $v['attr_values']); ?>
                                                <div class='form-group'><label class='col-sm-2 control-label no-padding-right'><?php echo $v['attr_name'];?></label>
                                            <div class='col-sm-6'>
                                                <select name="old_goods_attr[<?php echo $v['id'];?>]">
                                                    <option value="">请选择</option>
                                                    <?php foreach ($_attr as $k1 => $v1): if($gattrres[$v['id']][0]['attr_value']==$v1){ $selected='selected="selected"'; }else{ $selected=''; } ?>
                                                        <option value="<?php echo $v1;?>" <?php echo $selected;?>><?php echo $v1;?></option>
                                                    <?php endforeach;?>
                                                </select>
                                                <input type='hidden' name='old_goods_price[<?php echo $gattrres[$v['id']][0]['id'];?>]' value='0' />
                                            </div>
                                            </div>
                                            <?php else: ?>
                                                <div class='form-group'><label class='col-sm-2 control-label no-padding-right'><?php echo $v['attr_name'];?></label>
                                            <div class='col-sm-6'>
                                                <input name="old_goods_attr[<?php echo $v['id'];?>]" value="<?php echo $gattrres[$v['id']][0]['attr_value'];?>" type='text' class='form-control' />
                                                <input type='hidden' name='old_goods_price[<?php echo $gattrres[$v['id']][0]['id'];?>]' value='0' />
                                            </div>
                                            </div>
                                            <?php endif;?>
                                        <?php endif;?>
                                        <?php endforeach; endif;?>
                                    </div>
                                </div>

                                <div class="tab-pane" id="profile14">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right" for="username">
                                            
                                        </label>
                                        <div class="col-sm-6">
                                            <ul style="padding:0;">
                                                <?php if(is_array($picres)): $i = 0; $__LIST__ = $picres;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li picid="<?php echo ($vo["id"]); ?>" style="list-style:none; float:left;  margin:0 8px;">
                                                    <img height="50" src="/shop<?php echo ($vo["sm_thumb"]); ?>"><br />
                                                    <a href="#" onclick="delpic(this);"><i class="fa fa-times sky circular"></i>删</a>
                                                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                            <label class="col-sm-2 control-label no-padding-right" for="username">
                                                <a id="addImg" href="javascript:;">[+]</a>
                                            </label>
                                            <div class="col-sm-6">
                                                <input type="file" name="goods_pics[]">
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="修改商品信息" style="width:150px;" class="btn btn-darkorange btn-block">
                        <!-- 111111111111111111111111111111111 -->
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

                </div>
                <!-- /Page Body -->
            </div>
            <!-- /Page Content -->
        </div>  
    </div>

        <!--Basic Scripts-->
    <script src="http://127.0.0.1/shop/Application/Admin/Public/style/jquery_002.js"></script>
    <script src="http://127.0.0.1/shop/Application/Admin/Public/style/bootstrap.js"></script>
    <script src="http://127.0.0.1/shop/Application/Admin/Public/style/jquery.js"></script>
    <!--Beyond Scripts-->
    <script src="http://127.0.0.1/shop/Application/Admin/Public/style/beyond.js"></script>
    <script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    UE.getEditor('goods_desc',{initialFrameWidth:1500,initialFrameHeight:500,});
    var str='<div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="username"><a onclick="delImg(this);" href="javascript:;">[-]</a></label><div class="col-sm-6"><input type="file" name="goods_pics[]"></div></div>';
    $("#addImg").click(function(){
        $("#profile14").append(str);
    });

    function delImg(o){
        $(o).parent().parent().remove();
    }

    function attrad(o){
        var div=$(o).parent().parent();
        if($(o).html() == '[+]'){
            var newdiv=div.clone();
            var sel=newdiv.find("select");
            var oldname=sel.attr('name');
            var newname=oldname.replace('old_','');
            sel.attr('name',newname);
            newdiv.find(":text").attr('name','goods_price[]');
            newdiv.find('a').html('[-]');
            div.after(newdiv);
        }else{
            if(confirm('确定要删除该商品属性吗？')){
                var gaid=div.attr('gaid');
                $.ajax({
                type:"GET",
                url:"/shop/index.php/Admin/Goods/ajaxdelga/gaid/"+gaid,
                success:function(data){
                    div.remove();
                }
            });
            }
        }
    }
    //处理删除商品图片
    function delpic(o){
        if(confirm('确定要删除该图片吗？')){
            var li=$(o).parent();
            var picid=li.attr('picid');
            $.ajax({
                type:"GET",
                url:"/shop/index.php/Admin/Goods/ajaxdelpic/picid/"+picid,
                success:function(data){
                    li.remove();
                }
            });
        }
    }
    $("select[name=type_id]").change(function(){

        var typeid=$(this).val();
        $.ajax({
            type:"GET",
            url:"/shop/index.php/Admin/Goods/ajaxgetattr/typeid/"+typeid,
            dataType:"json",
            // success : function(data){

            //     var html="";
            //     $(data).each(function(k,v){
            //         html+="<div class='form-group'><label class='col-sm-2 control-label no-padding-right'>"+v.attr_name+"</label><div class='col-sm-6'><input type='text' class='form-control' /></div></div>";
            //     });
               
            //     $("#attr").html(html);
            // }
            success : function(data){

                var html="";
                $(data).each(function(k,v){
                    // html+="<div class='form-group'><label class='col-sm-2 control-label no-padding-right'>"+v.attr_name+"</label><div class='col-sm-6'><input type='text' class='form-control' /></div></div>";
                    if(v.attr_type == '1'){
                        var attrs=v.attr_values.split(",");
                        html+="<div class='form-group'><label class='col-sm-2 control-label no-padding-right'><a href='javascript:;' onclick='attrad(this);'>[+]</a>"+v.attr_name+"</label><div class='col-sm-6'>";
                        html+="<select name='goods_attr["+v.id+"][]'><option>请选择</option>";
                        for(var i=0; i<attrs.length; i++){
                            html+="<option>"+attrs[i]+"</option>";
                        }
                        html+="</select> <span>￥<input type='text' name='goods_price[]' style='padding:6px 12px; width:70px;' value='0' /> 元</span>";
                        html+="</div></div>";
                    }else{
                        if(v.attr_values != ''){
                            var attrs=v.attr_values.split(",");
                            html+="<div class='form-group'><label class='col-sm-2 control-label no-padding-right'>"+v.attr_name+"</label><div class='col-sm-6'>";
                            html+="<select name='goods_attr["+v.id+"]'><option>请选择</option>";
                            for(var i=0; i<attrs.length; i++){
                                html+="<option>"+attrs[i]+"</option>";
                            }
                            html+="</select><input type='hidden' name='goods_price[]' value='0' />";
                            html+="</div></div>";
                        }else{
                            html+="<div class='form-group'><label class='col-sm-2 control-label no-padding-right'>"+v.attr_name+"</label><div class='col-sm-6'><input name='goods_attr["+v.id+"]' type='text' class='form-control' /><input type='hidden' name='goods_price[]' value='0' /></div></div>";
                        }
                    }
                });
               
                $("#attr").html(html);
            }
        });
    });

</script>


</body></html>