import json

type
  Message* = object
    username*: string
    message*: string

proc parseMessage*(data:string):Message =
  let dataJson = parseJson(data)
  result.username = dataJson["username"].getStr("invalid username")
  result.message = dataJson["message"].getStr("invalid message")

proc createMessage*(username, message: string): string =
  result = $(%*{
    "username": username,
    "message": message
  })