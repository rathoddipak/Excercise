import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    var studentRules = {
      'student[name]': {
        required: true
      },
      'student[address]': {
        required: true
      },
      'student[cource]': {
        required: true
      },
      'student[age]': {
        required: true,
        digits: true
      }
    };

    var errorMessages = {
      'student[name]': {
        required: "Please enter name"
      },
      'student[address]': {
        required: "Please enter address"
      },
      'student[cource]': {
        required: "Please enter cource."
      },
      'student[age]': {
        required: "Please enter age."
      }
    };
  }
  update_student(e){
    debugger;
    var url = $('#student_url').val();
    debugger;
    $.ajax({
      type: 'GET',
      url: url,
      data: {
        status: e.target.getAttribute('id'),
      },
      dataType: 'script'
    });
  }
}
