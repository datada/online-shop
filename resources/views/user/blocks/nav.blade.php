<div id="categorymenu">
  <nav class="subnav">
    <ul class="nav-pills categorymenu">
      <li><a href="{{ url('/') }}">Trang chủ</a></li>
      <?php
      $menu_level_1= DB::table('cates')->where('parent_id',0)->get();
      ?>
      @foreach($menu_level_1 as $item_level_1)
      <?php
        $menu_level_2 = DB::table('cates')->where('parent_id',$item_level_1->id)->get();
        $link_menu_level_1 = ($menu_level_2!=null) ? URL('loai-san-pham',[$menu_level_2[0]->id, $menu_level_2[0]->alias]) : url('loai-san-pham',[$item_level_1->id,$item_level_1->alias]);
      ?>
      <li><a href="{!! $link_menu_level_1 !!}">{!! $item_level_1->name !!}</a>
        @if ($menu_level_2!=null)
        <div>
          <ul>
            @foreach($menu_level_2 as $item_level_2)
            <li><a href="{!! URL('loai-san-pham',[$item_level_2->id, $item_level_2->alias]) !!}">{!! $item_level_2->name !!}</a></li>
            @endforeach
          </ul>
        </div>
        @endif
      </li>
      @endforeach
      <li><a href="{{ url('lien-he') }}">Contact</a></li>         
    </ul>
  </nav>
</div>