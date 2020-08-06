import unittest, ../src/protocol

suite "protocolTests":
  setup:
    let data = """{
      "username": "John",
      "message": "Hello World!"
    }"""
    let username = "Henry"
    let message = "Hi!"

  test "check username":
    check parseMessage(data).username=="John"

  test "check message":
    check parseMessage(data).message=="Hello World!"

  test "checkJson":
    check createMessage(username,message) == """{"username":"Henry","message":"Hi!"}"""
