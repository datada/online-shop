<?php namespace App\Http\Controllers;
use DB,Mail,Request,Cart;
class WelcomeController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Welcome Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders the "marketing page" for the application and
	| is configured to only allow guests. Like most of the other sample
	| controllers, you are free to modify or remove it as you desire.
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		$this->middleware('guest');
	}

	/**
	 * Show the application welcome screen to the user.
	 *
	 * @return Response
	 */
	public function index()
	{
		$lastest_product = DB::table('products')->select('id','name','image','price','alias')->orderBy('id','DESC')->skip(0)
		->take(4)->get();
		$random_product = DB::table('products')->select('id','name','image','price','alias')
		->take(4)->get();
		return view('user.pages.home',compact('lastest_product','random_product'));
	}
	public function loaisanpham($id){
		$product_cate = DB::table('products')->select('id','name','image','price','alias','cate_id')
		->where('cate_id',$id)->paginate(6);
		$cate = DB::table('cates')->select('parent_id')->where('id',$product_cate[0]->cate_id)->first();
		$menu_cate = DB::table('cates')->select('id','name','alias')->where('parent_id',$cate->parent_id)->where('parent_id',"<>",0)->get();
		$lastest_product = DB::table('products')->select('id','name','image','price','alias')->orderBy('id','DESC')
		->take(3)->get();
		$name_cate = DB::table('cates')->select('name')->where('id',$id)->first();
		return view('user.pages.cate',compact('product_cate','menu_cate','lastest_product','name_cate'));
	}
	public function chitietsanpham($id){
		$product_detail = DB::table('products')->where('id',$id)->first();
		$image = DB::table('product_images')->select('id','image')->where('product_id',$product_detail->id)->get();
		$product_cate = DB::table('products')->where('cate_id',$product_detail->cate_id)->where('id','<>',$id)
		->take(4)->get();
		return view('user.pages.detail',compact('product_detail','image','product_cate')); 
	}
	public function get_lienhe(){
		return view('user.pages.contact');
	}
	public function post_lienhe(Request $reques){
		$data = ['hoten'=>Request::input('name'),'tinnhan'=>Request::input('message')];
		Mail::send('emails.blanks',$data,function($msg){
			$msg->from('mail@gmail.com','name');
			$msg->to('mail@gmail.com','name')->subject('Đây là mail góp ý');
		});
		echo "<script>
			alert('Cám ơn bạn đã góp ý. Chúng tôi sẽ liên hệ lại trong thời gian sớm nhất');
			window.location = '".url('/')."'
		</script>";
	}
	public function muahang($id){
		$product_buy = DB::table('products')->where('id',$id)->first();
		Cart::add(array('id'=>$id,'name'=>$product_buy->name,'qty'=>1,'price'=>$product_buy->price,'options'=>array('img'=>$product_buy->image)));
		$content = Cart::content();
		//print_r($content);
		return redirect()->route('giohang');
	}
	public function giohang(){
		$content = Cart::content();
		$total = Cart::total();
		return view('user.pages.shopping',compact('content','total'));
	}
	public function xoasanpham($id){
		Cart::remove($id);
		return redirect()->route('giohang');
	}
	public function capnhat(){
		if(Request::ajax()){
			$id = Request::get('id');
			$qty = Request::get('qty');
			Cart::update($id,$qty);
			echo "oke";
		}
	}
}
