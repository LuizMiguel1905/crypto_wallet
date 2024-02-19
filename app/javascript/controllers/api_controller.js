// app/javascript/controllers/api_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["countriesContainer", "country", "countryName", "countryFlag","hourNow"];

  connect() {
    this.fetchData();
  }

  fetchData() {
    this.countryTargets.forEach(countryTarget => {
      const countryApiUrl = countryTarget.dataset.apiUrl;

      console.log('Country API URL:', countryApiUrl);

      fetch(countryApiUrl)
        .then(response => {
          if (!response.ok) {
            throw new Error('API não disponível');
          }
          return response.json();
        })
        .then(userData => {
          const countryName = userData.name;
          const countryFlag = userData.image.large;
          const countryValue = userData.market_data.current_price.usd;
          countryTarget.querySelector("[data-target='api.countryName']").textContent = countryName;
          countryTarget.querySelector("[data-target='api.countryFlag']").src = countryFlag;
          countryTarget.querySelector("[data-target='api.countryValue']").textContent = countryValue;
        })
        .catch(error => {
          console.error('Error:', error);
        });
    });
  }
}
