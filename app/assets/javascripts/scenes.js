$(document).on('turbolinks:load', function() {
  $(function(){
    $('#image_file').change(function(e){
      var file = e.target.files[0];
      var reader = new FileReader();
      
      reader.onload = (function(file){
          return function(e){
            $('#img').attr("src", e.target.result);
            $('#img').attr("title", file.name);
          };
      })(file);
      reader.readAsDataURL(file);
    });
  });
});