window.serviceEvents = function (action) {
  showCountryAndCapitalInfo(action);
}

function showCountryAndCapitalInfo(action) {
  console.log(action);
  let country = encodeURIComponent(action.chosenCountry);
  frames.countryInfo.location.href = 'country-info?country=' + country;
  frames.capitalInfo.location.href = 'capital-info?country=' + country;

  /*Testing purposes 
    frames.countryInfo.location.href = 'http://localhost:4001/?country=' + country;
    frames.capitalInfo.location.href = 'http://localhost:4003/?country=' + country; */
}
