service WeatherService {
    action getWeather(
        city : String
    ) returns Weather;
}

type Weather {
    city : String;
    country : String;
    temperature : Decimal(10,2);
    humidity : Integer;
    description : String;
}