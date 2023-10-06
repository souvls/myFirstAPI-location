class location {
    constructor(id, name, address, description, image) {
        this.id = id || null;
        this.name = name;
        this.address = address;
        this.description = description;
        this.image = image || null;
    }
    greet() {}
  }
  
  module.exports = location;