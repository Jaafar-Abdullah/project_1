App.messages = App.cable.subscriptions.create("MessagesChannel", {
  received: function(data) {
    console.log("SOMETHING", data);
    // $("#messages").removeClass("hidden");
    console.log(this.renderMessage(data));
    return $(".messages").append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    return (
      "<div class='mess' id='messages'> <p class='name - left'> <b>" +
      data.user +
      ": </b></p>" +
      data.message +
      "</p></div>"
    );

    // return "<p> <b>" + data.user + ": </b>" + data.message + "</p>";

    //       <div class="mess" id="messages">
    //           <%= cl_image_tag message.user.user_image %>
    //   <p class="name-left"><%= message.user.user_name %>:</p>
    //           <p><%= message.body %></p>
    //       </div>
  }
});
