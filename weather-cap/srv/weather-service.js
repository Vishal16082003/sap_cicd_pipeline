const cds = require('@sap/cds');
const axios = require('axios');

module.exports = cds.service.impl(function () {

    this.on('getWeather', async (req) => {

        const city = req.data.city;

        const API_KEY =  "55b6d9c58b6566823da702ac620a0b24"; // Replace with your OpenWeatherMap API key
       // 'YOUR_API_KEY_HERE';

        try {

            const response =
                await axios.get(
                    `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${API_KEY}&units=metric`
                );

            return {

                city:
                    response.data.name,

                country:
                    response.data.sys.country,

                temperature:
                    response.data.main.temp,

                humidity:
                    response.data.main.humidity,

                description:
                    response.data.weather[0].description

            };

        } catch (error) {

            req.error(
                500,
                'Unable to fetch weather information'
            );

        }

    });

});