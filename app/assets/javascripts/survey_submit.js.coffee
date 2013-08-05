survey =

	init: ->
		$('.survey_form').on 'ajax:success', (e, response) ->
			survey.submitForm response

		$('input[type="text"]').on 'keydown', (e) ->
			survey.validateInput(@)


	submitForm: (response) ->
		$('.error_message').html ''
		if response.error
			$('.error_message').html response.error
		else
			$('#survey_modal').modal 'show'


	validateInput: (e) ->
		if $(e).val().length > 0 then $(e).parent().addClass 'success' else $(e).parent().removeClass 'success'

$(document).ready ->
	survey.init()