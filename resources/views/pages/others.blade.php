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
			<tr style='cursor: pointer; cursor: hand;' onclick="window.location='/menu/{{$menu->feedid}}';">
				<td style="padding:50px 0;">{{$menu->title}}</td>
				<td><img src="{{ asset('storage/images/'.$menu->Imagefilename) }}" alt="{{$menu->Imagefilename}}" 
					style="width: 200px;height: 100px;object-fit:cover;object-position: 20% 10%;"></td>

				<td style="padding:50px 0;">{{date_format($menu->created_at,'M d, Y')}}</td>

			</tr>
		
			@endforeach
		</tbody>
	</table>
</div>

@endsection