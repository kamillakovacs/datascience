window.onload = () => {
  const url = 'http://localhost:3000/filings';
  // const http = new XMLHttpRequest();
  const container = document.querySelector('#container');
  console.log(container)

  // http.open('GET', `${host}/filings`, true);
  // console.log(http)

  fetch(url)
  .then( res => res.json())
  .then( resp => {
    console.log(resp.filings)
    
    resp.filings.forEach(filing => {
      const newDiv = document.createElement('div');
      newDiv.classList.add('newpostdiv')
      container.appendChild(newDiv);

      const name = document.createElement('div')
      name.classList.add('newname')
      name.innerHTML = `<strong>Name:</strong> ` + filing.name;
      newDiv.appendChild(name);
    
      const comment = document.createElement('div')
      comment.classList.add('newcomment')
      comment.innerHTML = `<strong>Comment snippet:</strong> ` + filing.comment;
      newDiv.appendChild(comment);

      const linkdiv = document.createElement('div')
      const link = document.createElement('a')
      linkdiv.classList.add('newlink')
      link.innerHTML = filing.url;
      link.href = filing.url
      newDiv.appendChild(link);
    }); 
  })
}

    