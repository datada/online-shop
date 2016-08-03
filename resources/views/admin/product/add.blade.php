@extends('admin.master')
@section('controller','Product')
@section('action','Add')
@section('content')
<form action="{!! url('/admin/product/add') !!}" method="POST" enctype="multipart/form-data">
                    <div class="col-lg-7" style="padding-bottom:120px">
                        @include('admin.blocks.error')
                        
                            <input type="hidden" name="_token" value="{!!csrf_token()!!}" />
                            <div class="form-group">
                                <label>Category Parent</label>
                                <select class="form-control" name="sltParent">
                                    <option value="">Please Choose Category</option>
                                    <?php
                                        cate_parent($cate,0,"--",old('sltParent'));
                                    ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input class="form-control" name="txtName" placeholder="Please Enter Name" value="{!! old('txtName') !!}" />
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input class="form-control" name="txtPrice" placeholder="Please Enter Price" value="{!! old('txtPrice') !!}" />
                            </div>
                            <div class="form-group">
                                <label>Intro</label>
                                <textarea class="form-control" rows="3" name="txtIntro"> {!! old('txtIntro') !!} </textarea>
                                <script type="text/javascript"> ckeditor("txtIntro") </script>
                            </div>
                            <div class="form-group">
                                <label>Content</label>
                                <textarea class="form-control" rows="3" name="txtContent"> {!! old('txtContent') !!} </textarea>
                                <script type="text/javascript"> ckeditor("txtContent") </script>
                            </div>
                            <div class="form-group">
                                <label>Images</label>
                                <input type="file" name="fImages" value="{!! old('fImages') !!}" >
                            </div>
                            <div class="form-group">
                                <label>Product Keywords</label>
                                <input class="form-control" name="txtKeywords" placeholder="Please Enter Category Keywords" value="{!! old('txtKeywords') !!}" />
                            </div>
                            <div class="form-group">
                                <label>Product Description</label>
                                <textarea class="form-control" rows="3" name="txtDescription"> {!! old('txtDescription') !!} </textarea>
                            </div>
                            <button type="submit" class="btn btn-default">Product Add</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                    </div>
                    <div class="col-md-1"> </div>
                    <div class="col-md-4">
                        @for ($i=1; $i <=10; $i++) 
                        <div class="form-group">
                            <label>Image product detail {!!$i!!}</label>
                            <input type="file" name="fProductDetail[]"/>
                        </div>
                        @endfor
                    </div>
                </form>
@endsection()