<div id="profile-photo-content" class="generic-content-wrapper">
    <div class="section-title-wrapper">
    <h2>{{$title}}</h2>
    </div>
    <div class="section-content-wrapper">

		<form enctype="multipart/form-data" action="profile_photo" method="post">
		<input type='hidden' name='form_security_token' value='{{$form_security_token}}'>

		<div id="profile-photo-upload-wrapper">

			{{if $importfile}}
			<input type="hidden" name="importfile" value="{{$importfile}}">
			{{else}}
			<label id="profile-photo-upload-label" class="form-label" for="profile-photo-upload">{{$lbl_upfile}}</label>
			<input name="userfile" class="form-input" type="file" id="profile-photo-upload" size="48" />
			{{/if}}
			<div class="clear"></div>


			{{if $single}}
			<input type="hidden" name="profile" value="{{$profile0.id}}" />
			{{else}}

			<label id="profile-photo-profiles-label" class="form-label" for="profile-photo-profiles">{{$lbl_profiles}}</label>
			<select name="profile" id="profile-photo-profiles" class="form-control" >
			{{foreach $profiles as $p}}
				<option value="{{$p.id}}" {{if $p.is_default}}selected="selected"{{/if}}>{{$p.name}}</option>
			{{/foreach}}
			</select>
			<div class="clear"></div>
			<br />
			<br />
			{{/if}}

			<div id="profile-photo-submit-wrapper">
				<input type="submit" name="submit" id="profile-photo-submit" value="{{$submit}}">
			</div>
		</div>

		</form>
		<br />
		<br />
		<div id="profile-photo-link-select-wrapper">
		{{$select}}
		</div>
	</div>
</div>
