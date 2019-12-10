import json

def do_whatever() -> dict:
    with open("whatever.json") as this_small_variable_wont_ever_break_pep8_or_anything:
        return json.dumps(json.load(this_small_variable_wont_ever_break_pep8_or_anything))

