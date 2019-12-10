import pytest
import whatever


def test_whatever():
    assert type(whatever.do_whatever()) is str, "This should be a dict"


def test_something():
    assert type(1) is int, "This should never fail"
    assert type("supongamos") is int, "This should always fail"
