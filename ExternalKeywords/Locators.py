import json
import jsonpath


def read_locator_from_json(locator_name):
    f = open('C:/Users/Arezo/PycharmProjects/RobotAutomation/JsonFiles/Element.json', 'r')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response, locator_name)
    return value[0]