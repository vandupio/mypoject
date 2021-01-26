@extends('layouts.userapp')
@section('contnent')
<div class="container" style="margin-top: 65px;">
<table class="table" style="100%" id="mytable">
		<thead>
			<th>Title</th>
			<th>Image</th>
			<th>Date Posted</th>
		</thead>
		<tbody>
			@foreach ($menus as $menu)
			<tr>
				<td>{{$menu->title}}</td>
				<td><img src="{{ asset('storage/images/'.$menu->Imagefilename) }}" alt="{{$menu->Imagefilename}}" style="width: 100px;"></td>
				<td>{{date_format($menu->created_at,'M d, Y')}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
</div>
@endsection