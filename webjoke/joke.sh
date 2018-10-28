#!/bin/bash

while true
do
	sleep 0.6
	joke=`wget --header "Accept: application/json" -qO- https://icanhazdadjoke.com/ | grep joke | cut -f2 -d ':'`
	echo "
	
<!DOCTYPE html>
<html>
<head>
<style>
div {
    background-color: lightgrey;
    width: 300px;
    border: 25px solid MediumSeaGreen;
    padding: 25px;
    margin: 25px;
}
</style>
</head>
<body>

<h2>Demonstrating the Box Model</h2>

<p>Collecting jokes from internet.</p>
<p>Joke : </p>

<div>${joke}</div>

</body>
</html>
" > /usr/share/nginx/html/index.html
done
