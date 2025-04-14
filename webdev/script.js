// script.js

(function() {
    console.log("JavaScript is running!");

    // Example: Adding an event listener
    const myButton = document.querySelector('#myButton');
    if (myButton) {
        myButton.addEventListener('click', function() {
            alert('Button clicked!');
        });
    }
})();