// import consumer from "./consumer"

// consumer.subscriptions.create("RoomChannel", {
//   connected() {
//     console.log("Connected to RoomChannel...")
//   },

//   disconnected() {
//     // Called when the subscription has been terminated by the server
//   },

//   received(data) {
//     console.log(data)
// 	  this.send(data)
//   }
// });

import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    console.log("Connected to RoomChannel...")
    // this.send({message: 'blah blah'})
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data)    
    this.send(data)
  }
});
