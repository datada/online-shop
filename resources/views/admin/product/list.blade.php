@extends('admin.master')
@section('controller','Product')
@section('action','List')
@section('content')
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>ID</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Date</th>
                                <td>Category</td>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $item)
                            <tr class="odd gradeX" align="center">
                                <td>{!! $item["id"] !!}</td>
                                <td>{!! $item["name"] !!}</td>
                                <td>{!! number_format($item["price"],0,",",".") !!} VNĐ</td>
                                <td>
                                    {!! \Carbon\Carbon::createFromTimeStamp(strToTime($item["created_at"]))
                                        ->diffForHumans()
                                    !!}
                                </td>
                                <td>
                                    <?php $cate = DB::table('cates')->where('id',$item["cate_id"])->first(); ?>
                                    @if(!empty($cate->name))
                                        {!! $cate->name !!}
                                    @endif
                                </td>   
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{!! URL::route('admin.product.getDelete',$item["id"]) !!}" onclick="return xacnhanxoa('Do you want to delele this product')"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{!! URL::route('admin.product.getEdit',$item["id"]) !!}">Edit</a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
@endsection