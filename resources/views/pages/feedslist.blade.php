@extends('layouts.app')

@section('content')
<div class="text-center" style="font-size:40pt;">
		Feeds
</div>
<div class="container">
	<table class="table table-strip table-bordered " style="100%" id="mytable">
		<thead>
			<th>ID</th>
			<th>Title</th>
			<th>Posted Date</th>
			<th style="width: 200px;">Action</th>
		</thead>
		<tbody>
			@foreach($thisfeedslist as $list)
			<tr>
				<th scope="row">{{$list->id}}</th>
      			<th>{{$list->title}}</th>
      			<th>{{$list->created_at}}</th>
      			<th>
      				<div class="row">
	      				<div class="col-md-3">
	      					<a href='feedlist/{{$list->id}}' class="btn btn-sm btn-success" style="width: 48px;">View</a>
	      				</div>
	      				<div class="col-md-3">
	      					<a href='/feed/{{$list->id}}' class="btn btn-sm btn-primary" style="width: 48px;">Edit</a>
	      				</div>
	      				<div class="col-md-3">
	      					{!!Form::open(['action' => ['FeedController@destroy', $list->id], 'method' => 'POST', 'class' => 'pull-right'])!!}
						{{Form::hidden('_method', 'DELETE')}}
						{{Form::submit('Purge', ['class' => 'btn btn-danger btn-sm'])}}
	      				{!!Form::close()!!}
	      				</div>
      				</div>
				</th>
      		</tr>
      		@endforeach
		</tbody>
	</table>
</div>

@endsection
