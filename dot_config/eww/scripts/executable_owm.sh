#!/bin/sh

get_icon() {
    case $1 in
        # Icons for weather-icons
        01d) icon="󰖨 ";;
        01n) icon=" ";;
        02d) icon=" ";;
        02n) icon=" ";;
        03*) icon="󰖐 ";;
        04*) icon="󰅟 ";;
        09d) icon=" ";;
        09n) icon=" ";;
        10d) icon=" ";;
        10n) icon=" ";;
        11d) icon="󰙾 ";;
        11n) icon="󰙾 ";;
        50d) icon=" ";;
        50n) icon=" ";;
        *) icon="";

        # Icons for Font Awesome 5 Pro
        #01d) icon="";;
        #01n) icon="";;
        #02d) icon="";;
        #02n) icon="";;
        #03d) icon="";;
        #03n) icon="";;
        #04*) icon="";;
        #09*) icon="";;
        #10d) icon="";;
        #10n) icon="";;
        #11*) icon="";;
        #13*) icon="";;
        #50*) icon="";;
        #*) icon="";
    esac

    echo $icon
}

KEY="fddb4f05cbf1710148fdf86d7487f9c0"
CITY="5356277"
UNITS="imperial"
SYMBOL="°"

API="https://api.openweathermap.org/data/2.5"

# Parse command line arguments
SHOW_ICON=false
SHOW_TEMP=false
SHOW_CITY=false
SHOW_DESC=false

# If no arguments, show default (icon + temp)
if [ $# -eq 0 ]; then
    SHOW_ICON=true
    SHOW_TEMP=true
else
    for arg in "$@"; do
        case $arg in
            --icon) SHOW_ICON=true;;
            --temp) SHOW_TEMP=true;;
            --city) SHOW_CITY=true;;
            --desc) SHOW_DESC=true;;
        esac
    done
fi

if [ -n "$CITY" ]; then
    if [ "$CITY" -eq "$CITY" ] 2>/dev/null; then
        CITY_PARAM="id=$CITY"
    else
        CITY_PARAM="q=$CITY"
    fi

    weather=$(curl -sf "$API/weather?appid=$KEY&$CITY_PARAM&units=$UNITS")
else
    location=$(curl -sf "https://location.services.mozilla.com/v1/geolocate?key=geoclue")

    if [ -n "$location" ]; then
        location_lat="$(echo "$location" | jq '.location.lat')"
        location_lon="$(echo "$location" | jq '.location.lng')"

        weather=$(curl -sf "$API/weather?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS")
    fi
fi

if [ -n "$weather" ]; then
    weather_temp=$(echo "$weather" | jq ".main.temp" | cut -d "." -f 1)
    weather_icon=$(echo "$weather" | jq -r ".weather[0].icon")
    weather_desc=$(echo "$weather" | jq -r ".weather[0].description")
    weather_city=$(echo "$weather" | jq -r ".name")

    output=""
    
    [ "$SHOW_ICON" = true ] && output="$output$(get_icon "$weather_icon") "
    [ "$SHOW_TEMP" = true ] && output="$output$weather_temp$SYMBOL "
    [ "$SHOW_CITY" = true ] && output="$output$weather_city "
    [ "$SHOW_DESC" = true ] && output="$output($weather_desc) "

    # Trim trailing space
    echo "$output" | sed 's/ $//'
fi
