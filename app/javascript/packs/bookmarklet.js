(function () {
  var elements = document.getElementsByTagName('img');
  const imageLinks = Array.prototype.map.call(elements, el => {
    return el.getAttribute('src')
  });


  console.log(imageLinks)
})();
