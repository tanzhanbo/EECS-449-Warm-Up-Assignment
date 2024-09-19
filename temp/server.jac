walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker connect {
    has a: str;
    has b: str;

    can return_message with `root entry {
        report {
            "response": "I have a " + self.a + ". I have a " + self.b + ". Ahh, " + self.b + self.a + "!"
        };
    }
}

walker power {
    has a: int;
    has b: int;

    can return_message with `root entry {
        report {
            "response": self.a ** self.b
        };
    }
}