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


cat star_wars_characters.csv | while IFS="," read name title order color
do
  if [[ $query_selector == 1 ]]
  then 
    if [[ $search_query == $name ]]
    then
      echo -e "\nName: $name\nTitle: $title\nOrder: $order\nLightsaber Color: $color"
    fi
  elif [[ $query_selector == 2 ]]
  then 
    if [[ $search_query == $title ]]
    then
      echo -e "\nName: $name\nTitle: $title\nOrder: $order\nLightsaber Color: $color"
    fi
  elif [[ $query_selector == 3 ]]
  then 
    if [[ $search_query == $order ]]
    then
      echo -e "\nName: $name\nTitle: $title\nOrder: $order\nLightsaber Color: $color"
    fi
  elif [[ $query_selector == 4 ]]
  then 
    if [[ $search_query == $color ]]
    then
      echo -e "\nName: $name\nTitle: $title\nOrder: $order\nLightsaber Color: $color"
    fi
  fi
done

exit
