/*window.serviceEvents = function (action) {
  showCountryAndCapitalInfo(action);
}*/
window.addEventListener("message", (event) => {
  let action = event.data;
  showCountryAndCapitalInfo(action);
});

function showCountryAndCapitalInfo(action) {
  console.log(action);
  let country = encodeURIComponent(action.chosenCountry);
  /*frames.countryInfo.location.href = '/country-info?country=' + country;
  frames.capitalInfo.location.href = '/capital-info?country=' + country;*/
  frames.countryInfo.location.href = 'http://localhost:4001/?country=' + country;
  frames.capitalInfo.location.href = 'http://localhost:4003/?country=' + country;
}