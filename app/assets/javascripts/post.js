/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#post',
    data: {
      message: "User Deals:",
      posts: [
        {
          text: "Arby's is currently having a venison and elk sandwich for $7!",
          tating: 4,
          user: "John Doe"
        }
      ],
      newPostText: '',
      newPostRating: '',
      newPostUser: ''
    },
  mounted: {
      
    },
    methods: {
      addPost: function() {
        var newPost = {
          Text: this.newPostText,
          Rating: this.newPostRating,
          User: this.newPostUser
        };
        this.posts.push(newPost);
      },

    },
    computed: {

    }
  });
});