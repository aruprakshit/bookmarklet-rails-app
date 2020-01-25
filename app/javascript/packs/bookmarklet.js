(function () {
  var elements = document.getElementsByTagName('img');
  const imageLinks = Array.prototype.map.call(elements, el => {
    return el.getAttribute('src')
  });

  const request = new Request(
    'http://localhost:3000/photos', {
      method: 'POST',
      credentials: 'include',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(imageLinks)
    }
  );

  fetch(request)
    .then(response => {
      if (response.status === 200) {
        return response.json();
      } else {
        throw new Error('Something went wrong on api server!');
      }
    })
    .then(response => {
      console.debug(response);
      // ...
    }).catch(error => {
      console.error(error);
    });

  console.log(imageLinks)
})();
