#! /bin/bash

echo -e "\nWhat would you like to search by?\n1) Name\n2) Title\n3) Order\n4) Lightsaber Color"
read query_selector

if [[ $query_selector > 4 ]]
then
  echo -e "\nInput must be a number between 1 and 4."
else
  echo -e "\nWhat is the search query?\n"
  read search_query
fi


cat star_wars_characters.csv | while IFS="," read names titles orders colors
do
  if [[ $query_selector == 1 ]]
  then
    echo $names | while IFS="." read -r name
    do 
      if [[ $search_query == $name ]]
      then
        echo -e "\nName: $names\nTitle: $titles\nOrder: $orders\nLightsaber Color: $colors"
      fi
    done
  elif [[ $query_selector == 2 ]]
  then 
    if [[ $search_query == $titles ]]
    then
      echo -e "\nName: $names\nTitle: $titles\nOrder: $orders\nLightsaber Color: $colors"
    fi
  elif [[ $query_selector == 3 ]]
  then 
    if [[ $search_query == $orders ]]
    then
      echo -e "\nName: $names\nTitle: $titles\nOrder: $orders\nLightsaber Color: $colors"
    fi
  elif [[ $query_selector == 4 ]]
  then 
    if [[ $search_query == $colors ]]
    then
      echo -e "\nName: $names\nTitle: $titles\nOrder: $orders\nLightsaber Color: $colors"
    fi
  fi
done



exit
