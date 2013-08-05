var survey = {

	init: function() {
		$('.survey_form').on('ajax:success', function(e, response) {
			survey.submitForm(response)
		});

		$('input[type="text"]').on('keydown', function(e) {
			survey.validateInput(this);
		});
	},


	submitForm: function(response) {
		if (response.error) {
			$('.error_message').html(response.error);
		}
		else {
			$('.error_message').html('');
			$('#survey_modal').modal('show');
		}
	},


	validateInput: function(e) {
		if ($(e).val().length > 0) {
			$(e).parent().addClass('success');
		}
		else {
			$(e).parent().removeClass('success');
		}
	}
}

$(document).ready(function(){
	survey.init();
});