// alert();
$(document).ready(function(){
  var chat_id = $('#messages').data('chat_id');
  // alert(chat_id);
  App.message = App.cable.subscriptions.create({channel: "ChatEngine::MessageChannel", chat_id: chat_id}, {
    connected: function() {
      // alert("message_channel");
      // Called when the subscription is ready for use on the server
    },
  
    disconnected: function() {
      // Called when the subscription has been terminated by the server
    },
  
    received: function(data) {
      $('#messages').append(data['message']);
      // Called when there's incoming data on the websocket for this channel
    }
  });
});