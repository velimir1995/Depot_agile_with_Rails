import consumer from "./consumer"

consumer.subscriptions.create("ProductsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const storeElement = document.querySelector("main.store")
    
    if (storeElement) {
      storeElement.innerHTML = data.html;
      let li_element = document.getElementById(data.id_of_product);
      li_element.classList.add('product-highlight');
    }
  }
});
