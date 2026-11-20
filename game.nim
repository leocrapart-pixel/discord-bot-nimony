import std/syncio
import std/httpclient
import std/streamio


let jokeApiUrl = "https://v2.jokeapi.dev/joke/Any"

try:
  var page = httpGet(jokeApiUrl)
  let content = page.readAll()
  echo content
except ErrorCode as e:
  echo "Une erreur est survenue: ", e