<?php
namespace App\Api;

use PhalApi\Api;
use App\Domain\Paidprogram as Domain_Paidprogram;

/**
 * 动态管理
 */
class Paidprogram extends Api {
	public function getRules() {
		return array(

			'getApplyStatus'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
                'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名'),
			),
            'apply' => array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
                'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名'),
			),

			'getPaidprogramClassList'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
			),
			
			'addPaidProgram'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'title' => array('name' => 'title', 'type' => 'string', 'desc' => '付费内容标题'),
				'thumb' => array('name' => 'thumb', 'type' => 'string', 'desc' => '付费内容封面'),
				'content' => array('name' => 'content', 'type' => 'string', 'desc' => '付费内容简介'),
				'personal_desc' => array('name' => 'personal_desc', 'type' => 'string', 'desc' => '付费内容个人介绍'),
				'money' => array('name' => 'money', 'type' => 'string', 'desc' => '付费内容价格'),
				'type' => array('name' => 'type', 'type' => 'string', 'desc' => '付费内容类型 0 单视频 1 多视频'),
				'videos' => array('name' => 'videos', 'type' => 'string', 'desc' => '付费内容视频列表json串'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
                'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名'),

			),

			'getPaidProgramInfo'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'object_id'=>array('name' => 'object_id', 'type' => 'int', 'desc' => '项目ID'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
                'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名'),
			),

			'getMyPaidProgram'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
                'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名'),
                'p' => array('name' => 'p', 'type' => 'int', 'desc' => '分页数'),
			),

			'getBalance' => array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'min' => 1,  'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string',  'desc' => '用户token'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
				'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名字符串'),
			),

			'getAliOrder' => array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'min' => 1, 'require' => true, 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'object_id'=>array('name' => 'object_id', 'type' => 'int', 'desc' => '项目ID'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
				'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名字符串'),
			),

			'getWxOrder' => array( 
				'uid' => array('name' => 'uid', 'type' => 'int', 'min' => 1, 'require' => true, 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'object_id'=>array('name' => 'object_id', 'type' => 'int', 'desc' => '项目ID'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
				'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名字符串'),
			),

			'balancePay'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'min' => 1, 'require' => true, 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'object_id' => array('name' => 'object_id', 'type' => 'string', 'desc' => '付费项目ID'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
				'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名字符串'),
			),

			'getPaidProgramList'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
                'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名'),
                'p' => array('name' => 'p', 'type' => 'int', 'desc' => '分页数'),
			),

			'setComment'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'object_id' => array('name' => 'object_id', 'type' => 'string', 'desc' => '付费项目ID'),
				'grade' => array('name' => 'grade', 'type' => 'int', 'desc' => '评论等级 1-5之间的整数'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
                'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名'),
			),

			'searchPaidProgram'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'desc' => '用户ID'),
                'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
                'keywords' => array('name' => 'keywords', 'type' => 'string', 'desc' => '关键词'),
                'p' => array('name' => 'p', 'type' => 'int', 'default'=>'1', 'desc' => '页码'),
			),

			'getPaypalOrder' => array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'min' => 1, 'require' => true, 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'object_id'=>array('name' => 'object_id', 'type' => 'int', 'desc' => '项目ID'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
				'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名字符串'),
			),

			'getBrainTreePaypalOrder' => array(
				'uid' => array('name' => 'uid', 'type' => 'int', 'min' => 1, 'require' => true, 'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string', 'desc' => '用户token'),
				'object_id'=>array('name' => 'object_id', 'type' => 'int', 'desc' => '项目ID'),
				'time' => array('name' => 'time', 'type' => 'string', 'desc' => '时间戳'),
				'sign' => array('name' => 'sign', 'type' => 'string', 'desc' => '签名字符串'),
			),

			'getHomePaidprogram'=>array(
				'uid' => array('name' => 'uid', 'type' => 'int',  'desc' => '用户ID'),
				'token' => array('name' => 'token', 'type' => 'string','desc' => '用户Token'),
                'touid' => array('name' => 'touid', 'type' => 'int', 'require' => true, 'desc' => '对方ID'),
				'p' => array('name' => 'p', 'type' => 'int', 'min' => 1, 'default'=>1, 'desc' => '页数'),
			),
            
		);
	}

	/**
	 * 获取付费项目的申请状态
	 * @desc 用于申请开通付费项目
	 * @return int code 操作码，0表示成功
	 * @return array info 
	 * @return string info[0].isauth 用户是否认证
	 * @return string info[0].auth_msg 用户认证提示信息
	 * @return string info[0].apply_status 用户申请状态 -2 没有申请 -1 拒绝 0 审核中 1同意
	 * @return string info[0].title 用户申请时弹窗标题
	 * @return string info[0].desc 用户申请时弹窗描述内容
	 * @return string info[0].payment_title 用户申请时付费内容协议名称
	 * @return string msg 提示信息
	 */
	public function getApplyStatus(){
		$rs = array('code' => 0, 'msg' => '', 'info' => array());
		
		$uid=\App\checkNull($this->uid);
		$token=\App\checkNull($this->token);
		$time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);
		
		if($uid<1 || $token==''){
            $rs['code'] = 1001;
			$rs['msg'] = \PhalApi\T('信息错误');
			return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}
     
        $now=time();
        if($now-$time>300){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('参数错误');
            return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        $rs['info'][0]['isauth']='1';
        $rs['info'][0]['auth_msg']=\PhalApi\T('申请开通付费内容权限需要先进行实名认证');

        //判断用户身份认证是否成功
        $configpri=\App\getConfigPri();
		if($configpri['auth_islimit']==1){
			$isauth=\App\isAuth($uid);
			if(!$isauth){

				$rs['info'][0]['isauth']='0';
				return $rs;

			}
		}

		$domain=new Domain_Paidprogram();
		$apply_status=$domain->getApplyStatus($uid);

		$title='';
		$desc='';
		$payment_title='';
		$configpub=\App\getConfigPub();

		switch ($apply_status) {

			case '-2': //没申请
				$configpub=\App\getConfigPub();
				$title=\PhalApi\T('申请说明');
				$desc=$configpub['payment_des'];
				$payment_title=\PhalApi\T('《平台付费内容管理规范协议说明》');
				break;

			case '-1':
				$title=\PhalApi\T('申请未通过');
				$desc=\PhalApi\T('您的申请被拒,{num}日后可再次申请,如有疑问可咨询平台客服',['num'=>$configpub['payment_time']]);
				break;

			case '0':
				$title=\PhalApi\T('申请已提交');
				$desc=\PhalApi\T('审核通过后即可上传付费内容');
				break;
			
			case '1':
				$title=\PhalApi\T('申请已通过');
				$desc=\PhalApi\T('审核通过,可上传付费内容');
				break;
		}

		$rs['info'][0]['apply_status']=$apply_status;
		$rs['info'][0]['title']=$title;
		$rs['info'][0]['desc']=$desc;
		$rs['info'][0]['payment_title']=$payment_title;
		return $rs;
	}
	
	/**
	 * 申请开通付费项目
	 * @desc 用于申请开通付费项目
	 * @return int code 操作码，0表示成功
	 * @return array info 
	 * @return string msg 提示信息
	 */
	public function apply() {
		$rs = array('code' => 0, 'msg' => \PhalApi\T('申请成功'), 'info' => array());
		
		$uid=\App\checkNull($this->uid);
		$token=\App\checkNull($this->token);
		$time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);
		
		if($uid<1 || $token==''){
            $rs['code'] = 1001;
			$rs['msg'] = \PhalApi\T('信息错误');
			return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}
     
        $now=time();
        if($now-$time>300){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('参数错误');
            return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        //判断用户身份认证是否成功
		$isauth=\App\isAuth($uid);
		if(!$isauth){

			$rs['code']=1002;
			$rs['msg']=\PhalApi\T('申请开通付费内容权限需要先进行实名认证');
			return $rs;
		}
		
		$domain = new Domain_Paidprogram();
		$res = $domain->apply($uid);

		if($res==1001){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('申请已通过,不可重复申请');
			return $rs;
		}else if($res==1002){
			$rs['code']=1002;
			$rs['msg']=\PhalApi\T('正在审核中,请耐心等待');
			return $rs;
		}else if($res==1003){
			$rs['code']=1003;
			$rs['msg']=\PhalApi\T('申请太频繁,请过段时间再试');
			return $rs;
		}else if($res==1004){
			$rs['code']=1004;
			$rs['msg']=\PhalApi\T('申请失败,请重试');
			return $rs;
		}
		
		return $rs;
	}		
	
   	/**
	 * 获取付费项目分类列表
	 * @desc 用于获取付费项目分类列表
	 * @return int code 操作码，0表示成功
	 * @return array info 
	 * @return string info[].id 分类ID
	 * @return string info[].name 分类名称
	 * @return string msg 提示信息
	 */
	public function getPaidprogramClassList(){
		$rs = array('code' => 0, 'msg' => '', 'info' => array());
		
		$uid=\App\checkNull($this->uid);
		$token=\App\checkNull($this->token);
		$checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

		$domain=new Domain_Paidprogram();
		$res=$domain->getPaidprogramClassList();

		$rs['info']=$res;
		return $rs;

	}
	
	/**
	 * 上传付费项目
	 * @desc 用于上传付费项目
	 * @return int code 操作码，0表示成功
	 * @return array info 
	 * @return string msg 提示信息
	 */
	public function addPaidProgram(){
		$rs = array('code' => 0, 'msg' => \PhalApi\T('付费内容发布成功'), 'info' => array());
		
		$uid=\App\checkNull($this->uid);
		$token=\App\checkNull($this->token);
		$title=\App\checkNull($this->title);
		$thumb=\App\checkNull($this->thumb);
		$content=\App\checkNull($this->content);
		$personal_desc=\App\checkNull($this->personal_desc);
		$money=\App\checkNull($this->money);
		$type=\App\checkNull($this->type);
		$videos=$this->videos;
		$time=\App\checkNull($this->time);
		$sign=\App\checkNull($this->sign);

		if($uid<1||$token==''||!in_array($type, ['0','1'])||!$time||!$sign){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('参数错误');
			return $rs;
		}


		$checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

		$now=time();
		if($now-$time>300){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('参数错误');
            return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }


		$title=trim($title);
		if($title==''){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('请填写作品标题');
			return $rs;
		}

		if(mb_strlen($title)>15){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('作品标题在{num}字以内',['num'=>15]);
			return $rs;
		}

		if($thumb==''){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('请上传作品封面');
			return $rs;
		}

		$content=trim($content);

		if($content==''){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('请填写内容简介');
			return $rs;
		}

		if(mb_strlen($content)>100){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('内容简介在{num}字以内',['num'=>100]);
			return $rs;
		}

		$personal_desc=trim($personal_desc);

		if($personal_desc==''){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('请填写作者简介');
			return $rs;
		}

		if(mb_strlen($personal_desc)>50){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('作者简介在{num}字以内',['num'=>50]);
			return $rs;
		}

		if(!$money){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('请填写作品价格');
			return $rs;
		}

		if($money<1||$money>10000){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('填写作品价格在{num1}-{num2}之间',['num1'=>1,'num2'=>10000]);
			return $rs;
		}

		$videos=trim($videos);
		if(!$videos){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('请上传视频');
			return $rs;
		}
		$videos_arr=json_decode($videos,true);
		$count=count($videos_arr);

		if($type==0&&$count>1){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('单视频只允许上传一个视频');
			return $rs;
		}

		if($type==1&&$count==1){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('多视频不允许上传一个视频');
			return $rs;
		}

		$video_url_false=0;
		$video_title_false=0;

		foreach ($videos_arr as $k => $v) {
			if($v['video_url']==''){
				$video_url_false=1;
				break;
			}

			if($type==1&&$v['video_title']==''){
				$video_title_false=1;
				break;
			}

			if($type==1&&mb_strlen($v['video_title'])>15){
				$video_title_false=1;
				break;
			}


		}

		if($video_url_false){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('请上传视频文件');
			return $rs;
		}

		if($video_title_false){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('视频标题错误');
			return $rs;
		}

		$data=array(
			'uid'=>$uid,
			'title'=>$title,
			'thumb'=>$thumb,
			'content'=>$content,
			'personal_desc'=>$personal_desc,
			'money'=>$money,
			'type'=>$type,
			'videos'=>$videos,
			'addtime'=>$now
		);

		$domain=new Domain_Paidprogram();
		$res=$domain->addPaidProgram($data);

		if($res==1001){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('请先确认申请是否通过');
			return $rs;
		}
		if(!$res){
			$rs['code']=1002;
			$rs['msg']=\PhalApi\T('付费内容发布失败');
			return $rs;
		}

		return $rs;

	}
	

	/**
	 * 获取付费项目详情
	 * @desc 用于获取付费项目详情
	 * @return int code 操作码，0表示成功
	 * @return array info 
	 * @return string info[0].id 记录ID
	 * @return string msg 提示信息
	 */
	public function getPaidProgramInfo(){
		$rs = array('code' => 0, 'msg' => '', 'info' => array());
		
		$uid=\App\checkNull($this->uid);
		$token=\App\checkNull($this->token);
		$object_id=\App\checkNull($this->object_id);
		$time=\App\checkNull($this->time);
		$sign=\App\checkNull($this->sign);

		if($object_id<1){
			$rs['code'] = 1001;
			$rs['msg'] = \PhalApi\T('参数错误');
			return $rs;
		}

		if($uid>0){
			$checkToken=\App\checkToken($uid,$token);
			if($checkToken==700){
				$rs['code'] = $checkToken;
				$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
				return $rs;
			}
		}
		

		$now=time();
		if($now-$time>300){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('参数错误');
            return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'object_id'=>$object_id,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        $domain=new Domain_Paidprogram();
        $res=$domain->getPaidProgramInfo($uid,$object_id);
        if($res==1001){
        	$rs['code']=1001;
            $rs['msg']=\PhalApi\T('无法获取');
            return $rs; 
        }

        $rs['info'][0]=$res;
        return $rs;

	}
	/**
	 * 获取我上传的付费项目
	 * @desc 用于获取我上传的付费项目
	 * @return int code 状态码 0表示成功
	 * @return string msg 提示信息
	 * @return array info 返回信息
	 * @return array info[].id 付费项目ID
	 * @return array info[].title 付费项目标题
	 * @return array info[].sale_nums 付费项目购买数量
	 * @return array info[].status 付费项目状态 -1 拒绝 0 审核中 1 同意
	 * @return array info[].thumb_format 付费项目封面
	 * @return array info[].video_num 付费项目视频数量
	 */
	public function getMyPaidProgram(){
		$rs = array('code' => 0, 'msg' => \PhalApi\T('付费内容发布成功'), 'info' => array());
		
		$uid=\App\checkNull($this->uid);
		$token=\App\checkNull($this->token);
		$time=\App\checkNull($this->time);
		$sign=\App\checkNull($this->sign);
		$p=\App\checkNull($this->p);

		if($uid<1||$token==''){
			$rs['code'] = 1001;
			$rs['msg'] = \PhalApi\T('参数错误');
			return $rs;
		}

		$checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

		$now=time();
		if($now-$time>300){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('参数错误');
            return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        $domain=new Domain_Paidprogram();
        $res=$domain->getMyPaidProgram($uid,$p);
        $rs['info']=$res;

        return $rs;

	}

	/**
     * 获取用户的余额和支付信息
     * @desc 用于 获取用户的余额和支付信息
     * @return int code 操作码，0表示成功
     * @return array info
     * @return string info[0].balance 用户人民币余额
	 * @return string info[0].aliapp_partner 支付宝合作者身份ID
	 * @return string info[0].aliapp_seller_id 支付宝帐号	
	 * @return string info[0].aliapp_key_android 支付宝安卓密钥
	 * @return string info[0].aliapp_key_ios 支付宝苹果密钥
	 * @return string info[0].wx_appid 开放平台账号AppID
	 * @return string info[0].wx_appsecret 微信应用appsecret
	 * @return string info[0].wx_mchid 微信商户号mchid
	 * @return string info[0].wx_key 微信密钥key
	 * @return string info[0].paylist 支付方式列表
	 * @return string info[0].paylist[].id 支付方式列表项ID
	 * @return string info[0].paylist[].name 支付方式列表项名称
	 * @return string info[0].paylist[].thumb 支付方式列表项图标
	 * @return string info[0].paylist[].href 支付方式列表项链接
     * @return string msg 提示信息
     */
	public function getBalance(){
    	$rs = array('code' => 0, 'msg' => '', 'info' => array());
        
        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);

        if($uid<0||$token==''||!$time||!$sign){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

        $now=time();
        if($now-$time>300){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

		$info=\App\getUserShopBalance($uid);
		$info['balance']=$info['balance'];
		unset($info['balance_total']);

		$configpri=\App\getConfigPri();

		$paidprogram_aliapp_switch=$configpri['paidprogram_aliapp_switch'];
		$paidprogram_wx_switch=$configpri['paidprogram_wx_switch'];

		$info['aliapp_partner']=$paidprogram_aliapp_switch==1?$configpri['aliapp_partner']:'';
		$info['aliapp_seller_id']=$paidprogram_aliapp_switch==1?$configpri['aliapp_seller_id']:'';
		$info['aliapp_key_android']=$paidprogram_aliapp_switch==1?$configpri['aliapp_key_android']:'';
		$info['aliapp_key_ios']=$paidprogram_aliapp_switch==1?$configpri['aliapp_key_ios']:'';

		$info['wx_appid']=$paidprogram_wx_switch==1?$configpri['wx_appid']:'';
		$info['wx_appsecret']=$paidprogram_wx_switch==1?$configpri['wx_appsecret']:'';
		$info['wx_mchid']=$paidprogram_wx_switch==1?$configpri['wx_mchid']:'';
		$info['wx_key']=$paidprogram_wx_switch==1?$configpri['wx_key']:'';

		$paidprogram_balance_switch=$configpri['paidprogram_balance_switch'];

		//【原PayPal支付因无法使用已废弃但保留】
		//$paidprogram_paypal_switch=$configpri['paidprogram_paypal_switch'];
		$paidprogram_braintree_paypal_switch=$configpri['paidprogram_braintree_paypal_switch'];

		$paylist=[];

		if($paidprogram_aliapp_switch){
            $paylist[]=[
                'id'=>'ali',
                'name'=>\PhalApi\T('支付宝支付'),
                'thumb'=>\App\get_upload_path("/static/app/paidprogrampay/ali.png"),
                'href'=>'',
                'type'=>'1' //对应创建订单接口里的type
            ];
        }

        if($paidprogram_wx_switch){
            $paylist[]=[
                'id'=>'wx',
                'name'=>\PhalApi\T('微信支付'),
                'thumb'=>\App\get_upload_path("/static/app/paidprogrampay/wx.png"),
                'href'=>'',
                'type'=>'2'
            ];
        }

        /*【原PayPal支付因无法使用已废弃但保留】
        if($paidprogram_paypal_switch){
            $paylist[]=[
                'id'=>'paypal',
                'name'=>\PhalApi\T('Paypal支付'),
                'thumb'=>\App\get_upload_path("/static/app/paidprogrampay/paypal.png"),
                'href'=>'',
                'type'=>'5'
            ];
        }*/

        if($paidprogram_braintree_paypal_switch){
            $paylist[]=[
                'id'=>'paypal',
                'name'=>\PhalApi\T('Paypal支付'),
                'thumb'=>\App\get_upload_path("/static/app/paidprogrampay/paypal.png"),
                'href'=>'',
                'type'=>'6'
            ];
        }

        if($paidprogram_balance_switch){
            $paylist[]=[
                'id'=>'balance',
                'name'=>\PhalApi\T('余额支付'),
                'thumb'=>\App\get_upload_path("/static/app/paidprogrampay/balance.png"),
                'href'=>'',
                'type'=>'3'
            ];
        }//type：4是给微信小程序预留的

        

        $info['paylist'] =$paylist;

        $rs['info'][0]=$info;
		return $rs;

    }


    /* 获取订单号 */
	protected function getOrderid($uid){
		$orderid=$uid.'_'.date('YmdHis').rand(100,999);
		return $orderid;
	}


    /**
     * 创建支付宝订单
     * @desc 用于创建支付宝订单
     * @return int code 操作码，0表示成功
     * @return string msg 提示信息
     * @return string info[0].orderid 订单编号
     */
    public function getAliOrder(){
    	$rs = array('code' => 0, 'msg' => \PhalApi\T('订单创建成功'), 'info' => array());
        
        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $object_id=\App\checkNull($this->object_id);
        $time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);

        if($uid<0||$token==''||$object_id<1||!$time||!$sign){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

        $now=time();
        if($now-$time>300){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'object_id'=>$object_id,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        $configpri=\App\getConfigPri();
        if(!$configpri['aliapp_partner']||!$configpri['aliapp_seller_id']||!$configpri['aliapp_key_android']||!$configpri['aliapp_key_ios']){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('支付宝未配置');
            return $rs;
        }

        $orderid=$this->getOrderid($uid);
		$type=1;

		$orderinfo=array(
			"uid"=>$uid,
			"orderno"=>$orderid,
			"object_id"=>$object_id,
			"type"=>$type,
			"status"=>0,
			"addtime"=>time()
		);

		$domain = new Domain_Paidprogram();
		$res = $domain->getOrderId($orderinfo);

		if($res==1001){
			$rs['code']=1001;
            $rs['msg']=\PhalApi\T('付费项目不存在');
            return $rs;
		}else if($res==1002){
			$rs['code']=1002;
            $rs['msg']=\PhalApi\T('不能购买自己的付费项目');
            return $rs;
		}else if($res==1003){
			$rs['code']=1003;
            $rs['msg']=\PhalApi\T('该付费项目不可购买');
            return $rs;
		}else if($res==1004){
			$rs['code']=1004;
            $rs['msg']=\PhalApi\T('您已购买过该项目');
            return $rs;
		}else if(!$res){
			$rs['code']=1005;
			$rs['msg']=\PhalApi\T('订单生成失败');
		}

		$rs['info'][0]['orderid']=$orderid;
		return $rs;
    }

    /**
     * 创建微信订单
     * @desc 用于创建微信订单
     * @return int code 操作码，0表示成功
     * @return string msg 提示信息
     * @return string info[0].appid 微信支付appid
     * @return string info[0].partnerid 微信支付商户号
     * @return string info[0].noncestr 微信支付仅适用一次验签字符串
     * @return string info[0].prepayid 微信支付id
     */
    public function getWxOrder(){
    	$rs = array('code' => 0, 'msg' => \PhalApi\T('订单创建成功'), 'info' => array());
        
        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $object_id=\App\checkNull($this->object_id);
        $time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);

        if($uid<0||$token==''||$object_id<1||!$time||!$sign){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

        $now=time();
        if($now-$time>300){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'object_id'=>$object_id,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        $configpri = \App\getConfigPri(); 
		$configpub = \App\getConfigPub(); 

		 //配置参数检测
					
		if($configpri['wx_appid']== "" || $configpri['wx_mchid']== "" || $configpri['wx_key']== ""){
			$rs['code'] = 1002;
			$rs['msg'] = \PhalApi\T('微信未配置');
			return $rs;					 
		}

		$orderid=$this->getOrderid($uid);
		$type=2;

		$orderinfo=array(
			"uid"=>$uid,
			"orderno"=>$orderid,
			"object_id"=>$object_id,
			"type"=>$type,
			"status"=>0,
			"addtime"=>time()
		);

		$domain = new Domain_Paidprogram();
		$res = $domain->getOrderId($orderinfo);

		if($res==1001){
			$rs['code']=1001;
            $rs['msg']=\PhalApi\T('付费项目不存在');
            return $rs;
		}else if($res==1002){
			$rs['code']=1002;
            $rs['msg']=\PhalApi\T('不能购买自己的付费项目');
            return $rs;
		}else if($res==1003){
			$rs['code']=1003;
            $rs['msg']=\PhalApi\T('该付费项目不可购买');
            return $rs;
		}else if($res==1004){
			$rs['code']=1004;
            $rs['msg']=\PhalApi\T('您已购买过该项目');
            return $rs;
		}else if(!$res){
			$rs['code']=1005;
			$rs['msg']=\PhalApi\T('订单生成失败');
		}

		$paidprogram_info=$domain->getPaidProgramInfo($uid,$object_id);

		$noceStr = md5(rand(100,1000).time());//获取随机字符串
		$time = time();
			
		$paramarr = array(
			"appid"       =>   $configpri['wx_appid'],
			"body"        =>   \PhalApi\T("花费{money}购买{name}",['money'=>$paidprogram_info['money'],'name'=>$paidprogram_info['title']]),
			"mch_id"      =>    $configpri['wx_mchid'],
			"nonce_str"   =>    $noceStr,
			"notify_url"  =>    $configpub['site'].'/appapi/Paidprogrampay/notify_wx',
			"out_trade_no"=>    $orderid,
			"total_fee"   =>    $paidprogram_info['money']*100, 
			"trade_type"  =>    "APP"
		);

		$sign = $this -> sign($paramarr,$configpri['wx_key']);//生成签名
		$paramarr['sign'] = $sign;
		$paramXml = "<xml>";
		foreach($paramarr as $k => $v){
			$paramXml .= "<" . $k . ">" . $v . "</" . $k . ">";
		}
		$paramXml .= "</xml>";
			 
		$ch = curl_init ();
		@curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // 跳过证书检查  
		@curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, true);  // 从证书中检查SSL加密算法是否存在  
		@curl_setopt($ch, CURLOPT_URL, "https://api.mch.weixin.qq.com/pay/unifiedorder");
		@curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		@curl_setopt($ch, CURLOPT_POST, 1);
		@curl_setopt($ch, CURLOPT_POSTFIELDS, $paramXml);
		@$resultXmlStr = curl_exec($ch);
		if(curl_errno($ch)){
			//print curl_error($ch);
			file_put_contents(API_ROOT.'/../log/phalapi/paidprogram_getWxOrder_'.date('Y-m-d').'.txt',date('y-m-d H:i:s').' curl错误信息 ch:'.json_encode(curl_error($ch))."\r\n\r\n",FILE_APPEND);
		}
		curl_close($ch);

		$result2 = $this->xmlToArray($resultXmlStr);
        
        if($result2['return_code']=='FAIL'){
            $rs['code']=1005;
			$rs['msg']=$result2['return_msg'];
            return $rs;	
        }

        $prepayid = $result2['prepay_id'];
		$sign = "";
		$noceStr = md5(rand(100,1000).time());//获取随机字符串
		$paramarr2 = array(
			"appid"     =>  $configpri['wx_appid'],
			"noncestr"  =>  $noceStr,
			"package"   =>  "Sign=WXPay",
			"partnerid" =>  $configpri['wx_mchid'],
			"prepayid"  =>  $prepayid,
			"timestamp" =>  $now
		);
		$paramarr2["sign"] = $this -> sign($paramarr2,$configpri['wx_key']);//生成签名
		
		$rs['info'][0]=$paramarr2;
		return $rs;
    }


    /**
	* sign拼装获取
	*/
	protected function sign($param,$key){
		$sign = "";
		foreach($param as $k => $v){
			$sign .= $k."=".$v."&";
		}
		$sign .= "key=".$key;
		$sign = strtoupper(md5($sign));
		return $sign;
	
	}
	/**
	* xml转为数组
	*/
	protected function xmlToArray($xmlStr){
		$msg = array(); 
		$postStr = $xmlStr; 
		$msg = (array)simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA); 
		return $msg;
	}

	/**
	 * 用户使用余额支付付费项目
	 * @desc 用于用户使用余额支付付费项目
	 * @return int code 状态码，0表示成功
	 * @return string msg 提示信息
	 * @return array info 返回信息
	 */
	public function balancePay(){

		$rs = array('code' => 0, 'msg' => \PhalApi\T('购买成功'), 'info' => array());
        
        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $object_id=\App\checkNull($this->object_id);
        $time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);

        if($uid<0||$token==''||$object_id<1||!$time||!$sign){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

        $now=time();
        if($now-$time>300){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'object_id'=>$object_id,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        $orderid=$this->getOrderid($uid);
		$type=3;

        $orderinfo=array(
			"uid"=>$uid,
			"orderno"=>$orderid,
			"object_id"=>$object_id,
			"type"=>$type,
			"status"=>1,
			"addtime"=>time(),
			"edittime"=>time()
		);

        $domain=new Domain_Paidprogram();
        $res=$domain->balancePay($uid,$orderinfo);

        if($res==1001){
			$rs['code']=1001;
            $rs['msg']=\PhalApi\T('付费项目不存在');
            return $rs;
		}else if($res==1002){
			$rs['code']=1002;
            $rs['msg']=\PhalApi\T('不能购买自己的付费项目');
            return $rs;
		}else if($res==1003){
			$rs['code']=1003;
            $rs['msg']=\PhalApi\T('该付费项目不可购买');
            return $rs;
		}else if($res==1004){
			$rs['code']=1004;
			$rs['msg']=\PhalApi\T('您的余额不足');
		}else if($res==1005){
			$rs['code']=1005;
			$rs['msg']=\PhalApi\T('您已购买过该项目');
		}else if(!$res){
			$rs['code']=1006;
			$rs['msg']=\PhalApi\T('余额购买失败');
		}

		return $rs;
	}

	/**
	 * 用户获取购买的付费项目列表
	 * @desc 用于用户获取购买的付费项目列表
	 * @return int code 状态码，0表示成功
	 * @return string msg 提示信息
	 * @return array info 返回信息
	 */
	public function getPaidProgramList(){
		$rs = array('code' => 0, 'msg' => '', 'info' => array());
        
        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);
        $p=\App\checkNull($this->p);

        if($uid<0||$token==''||!$time||!$sign){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

        $now=time();
        if($now-$time>300){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        $domain=new Domain_Paidprogram();
        $res=$domain->getPaidProgramList($uid,$p);
        $rs['info']=$res;

        return $rs;

	}
	
	/**
	 * 用户对付费项目发表评论
	 * @desc 用于用户对付费项目发表评论
	 * @return int code 状态码，0表示成功
	 * @return string msg 提示信息
	 * @return array info 返回信息
	 */
	public function setComment(){
		$rs = array('code' => 0, 'msg' => \PhalApi\T('评价成功'), 'info' => array());
        
        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $object_id=\App\checkNull($this->object_id);
        $grade=\App\checkNull($this->grade);
        $time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);

        if($uid<0||$token==''||$object_id<1||!$time||!$sign){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

        $now=time();
        if($now-$time>300){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'object_id'=>$object_id,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        if($grade<1||$grade>5){
        	$rs['code']=1001;
            $rs['msg']=\PhalApi\T('评价等级应在{level1}-{level2}级之间',['level1'=>1,'level2'=>5]);
            return $rs;
        }

        if(floor($grade)!=$grade){
        	$rs['code']=1001;
            $rs['msg']=\PhalApi\T('评价等级必须为整数');
            return $rs;
        }

        $domain=new Domain_Paidprogram();

        $res=$domain->setComment($uid,$object_id,$grade);

        if($res==1001){
        	$rs['code']=1001;
            $rs['msg']=\PhalApi\T('请先购买付费项目');
            return $rs;
        }

        if($res==1002){
        	$rs['code']=1002;
            $rs['msg']=\PhalApi\T('已经发表评价');
            return $rs;
        }

        if($res==1003){
        	$rs['code']=1003;
            $rs['msg']=\PhalApi\T('付费项目不存在');
            return $rs;
        }

        if($res==1004){
        	$rs['code']=1004;
            $rs['msg']=\PhalApi\T('不能对自己的付费项目发表评价');
            return $rs;
        }

        if($res==1005){
        	$rs['code']=1005;
            $rs['msg']=\PhalApi\T('不能对未审核通过的付费项目发表评价');
            return $rs;
        }

        if(!$res){
        	$rs['code']=1006;
            $rs['msg']=\PhalApi\T('评价失败');
            return $rs;
        }

        return $rs;

	}

	/**
	 * 用户发布的付费内容搜索
	 * @desc 用于用户发布的付费内容搜索
	 * @return int code 状态码，0表示成功
	 * @return string msg 提示信息
	 * @return array info 返回信息
	 * @return int info[0]['id'] 商品ID
	 * @return string info[0]['name'] 商品名称
	 * @return string info[0]['price'] 商品价格
	 * @return string info[0]['thumb'] 商品封面
	 */
	public function searchPaidProgram(){
		$rs = array('code' => 0, 'msg' => '', 'info' => array());
		$uid=\App\checkNull($this->uid);
		$token=\App\checkNull($this->token);
		$keywords=\App\checkNull($this->keywords);
		$p=\App\checkNull($this->p);

		$checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

		//判断用户是否开通了付费内容
		$is_paidprogram=\App\checkPaidProgramIsPass($uid);
		if(!$is_paidprogram){
			$rs['info']=[];
			return $rs;
		}

		$domain=new Domain_Paidprogram();
		$res=$domain->searchPaidProgram($uid,$keywords,$p);

		$rs['info']=$res;
		return $rs;
	}

		
	/* 检测文件后缀 */
	protected function checkExt($filename){
		$config=array("jpg","png","jpeg");
		$ext   =   pathinfo(strip_tags($filename), PATHINFO_EXTENSION);
		 
		return empty($config) ? true : in_array(strtolower($ext), $config);
	}	
	
	/**
	 * 创建付费内容原生Paypal支付订单
	 * @desc 用于创建付费内容原生Paypal支付订单
	 * @return int code 状态码，0表示成功
	 * @return string msg 提示信息
	 * @return array info 返回信息
	 * @return array info[0].paypal_sandbox 返回Paypal支付模式
	 * @return array info[0].sandbox_clientid 返回Paypal沙盒项目ID
	 * @return array info[0].product_clientid 返回Paypal生产环境项目ID
	 * @return array info[0].orderid 返回订单号
	 */
	private function getPaypalOrderBF(){
		$rs = array('code' => 0, 'msg' => \PhalApi\T('订单创建成功'), 'info' => array());
        
        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $object_id=\App\checkNull($this->object_id);
        $time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);

        if($uid<0||$token==''||$object_id<1||!$time||!$sign){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);
		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}

        $now=time();
        if($now-$time>300){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'object_id'=>$object_id,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        $configpri=\App\getConfigPri();
		if($configpri['paypal_sandbox']==0){
			if(!$configpri['sandbox_clientid']){
				$rs['code']=1001;
				$rs['msg']=\PhalApi\T('Paypal未配置');		
				return $rs;	
			}
		}else{
			if(!$configpri['product_clientid']){
				$rs['code']=1001;
				$rs['msg']=\PhalApi\T('Paypal未配置');		
				return $rs;
			}
		}

        $orderid=$this->getOrderid($uid);
		$type=5;

		$orderinfo=array(
			"uid"=>$uid,
			"orderno"=>$orderid,
			"object_id"=>$object_id,
			"type"=>$type,
			"status"=>0,
			"addtime"=>time()
		);

		$domain = new Domain_Paidprogram();
		$res = $domain->getOrderId($orderinfo);

		if($res==1001){
			$rs['code']=1001;
            $rs['msg']=\PhalApi\T('付费项目不存在');
            return $rs;
		}else if($res==1002){
			$rs['code']=1002;
            $rs['msg']=\PhalApi\T('不能购买自己的付费项目');
            return $rs;
		}else if($res==1003){
			$rs['code']=1003;
            $rs['msg']=\PhalApi\T('该付费项目不可购买');
            return $rs;
		}else if($res==1004){
			$rs['code']=1004;
            $rs['msg']=\PhalApi\T('您已购买过该项目');
            return $rs;
		}else if(!$res){
			$rs['code']=1005;
			$rs['msg']=\PhalApi\T('订单生成失败');
		}

		$paidprogram_info=$domain->getPaidProgramInfo($uid,$object_id);

		$paypal=[
			'paypal_sandbox'=>$configpri['paypal_sandbox'],//支付模式：0：沙盒支付；1：生产支付
			'sandbox_clientid'=>$configpri['sandbox_clientid'],//沙盒客户端ID
			'product_clientid'=>$configpri['product_clientid'],//生产客户端ID
		];
		$rs['info'][0]=$paypal;
		$rs['info'][0]['orderid']=$orderid;
		$rs['info'][0]['goods_name']=\App\filterEmoji($paidprogram_info['title']);
		return $rs;
	}


	/**
	 * 创建付费内容BraintreePaypal支付订单
	 * @desc 用于创建付费内容BraintreePaypal支付订单
	 * @return int code 状态码，0表示成功
	 * @return string msg 提示信息
	 * @return array info 返回信息
	 * @return array info[0].orderid 返回订单号
	 */
	public function getBraintreePaypalOrder(){
		$rs = array('code' => 0, 'msg' => \PhalApi\T('订单创建成功'), 'info' => array());
        
        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $object_id=\App\checkNull($this->object_id);
        $time=\App\checkNull($this->time);
        $sign=\App\checkNull($this->sign);

        if($uid<0||$token==''||$object_id<1||!$time||!$sign){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkToken=\App\checkToken($uid,$token);

		if($checkToken==700){
			$rs['code'] = $checkToken;
			$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
			return $rs;
		}else if($checkToken==10020){
			$rs['code'] = 700;
			$rs['msg'] = \PhalApi\T('该账号已被禁用');
			return $rs;
		}

        $now=time();
        if($now-$time>300){
        	$rs['code']=1001;
        	$rs['msg']=\PhalApi\T('参数错误');
        	return $rs;
        }

        $checkdata=array(
            'uid'=>$uid,
            'token'=>$token,
            'object_id'=>$object_id,
            'time'=>$time
        );
        
        $issign=\App\checkSign($checkdata,$sign);
        if(!$issign){
            $rs['code']=1001;
            $rs['msg']=\PhalApi\T('签名错误');
            return $rs; 
        }

        $configpri=\App\getConfigPri();

		$environment=$configpri['braintree_paypal_environment'];

		$merchantId='';
		$publicKey='';
		$privateKey='';

		if($environment==0){ //沙盒
			$merchantId=$configpri['braintree_merchantid_sandbox'];
			$publicKey=$configpri['braintree_publickey_sandbox'];
			$privateKey=$configpri['braintree_privatekey_sandbox'];
			
		}else{ //生产

			$merchantId=$configpri['braintree_merchantid_product'];
			$publicKey=$configpri['braintree_publickey_product'];
			$privateKey=$configpri['braintree_privatekey_product'];
			
		}

		if(!$merchantId || !$publicKey ||!$privateKey){
			$rs['code']=1001;
			$rs['msg']=\PhalApi\T('BraintreePaypal未配置');
			return $rs;
		}

        $orderid=$this->getOrderid($uid);
		$type=6;

		$orderinfo=array(
			"uid"=>$uid,
			"orderno"=>$orderid,
			"object_id"=>$object_id,
			"type"=>$type,
			"status"=>0,
			"addtime"=>time()
		);

		$domain = new Domain_Paidprogram();
		$res = $domain->getOrderId($orderinfo);

		if($res==1001){
			$rs['code']=1001;
            $rs['msg']=\PhalApi\T('付费项目不存在');
            return $rs;
		}else if($res==1002){
			$rs['code']=1002;
            $rs['msg']=\PhalApi\T('不能购买自己的付费项目');
            return $rs;
		}else if($res==1003){
			$rs['code']=1003;
            $rs['msg']=\PhalApi\T('该付费项目不可购买');
            return $rs;
		}else if($res==1004){
			$rs['code']=1004;
            $rs['msg']=\PhalApi\T('您已购买过该项目');
            return $rs;
		}else if(!$res){
			$rs['code']=1005;
			$rs['msg']=\PhalApi\T('订单生成失败');
		}

		$paidprogram_info=$domain->getPaidProgramInfo($uid,$object_id);

		$rs['info'][0]['orderid']=$orderid;
		$rs['info'][0]['goods_name']=\App\filterEmoji($paidprogram_info['title']);
		return $rs;
	}


	/**
	 * 获取用户个人主页付费内容列表
	 * @return int code 状态码,0表示成功
	 * @return string msg 提示信息
	 * @return array info 返回信息
	 */
	public function getHomePaidprogram(){
		$rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $touid=\App\checkNull($this->touid);
		$p=\App\checkNull($this->p);

		if($uid>0){
        	$isBan=\App\isBan($uid);
			 if($isBan=='0'){
				$rs['code'] = 700;
				$rs['msg'] = \PhalApi\T('该账号已被禁用');
				return $rs;
			}

			$checkToken=\App\checkToken($uid,$token);
			if($checkToken==700){
				$rs['code'] = $checkToken;
				$rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
				return $rs;
			}
        }


        $domain = new Domain_Paidprogram();
        $res = $domain->getHomePaidprogram($uid,$touid,$p);

        $rs['info']=$res;
        return $rs;
	}


}