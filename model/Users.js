class User {
    constructor(id, name, email, password, token) {
        this.id = id || null;
        this.name = name;
        this.email = email;
        this.password = password;
        this.token = token;
    }
    greet() {}
  }
  
  module.exports = User;