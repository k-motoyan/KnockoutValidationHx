package test;

import knockout.Observable;
import knockout.Knockout;
import knockoutValidation.Validation;
import knockoutValidation.KnockoutValidation;

class Compile {
    static function main() {
        var c = new Compile();
        c.locale();
        c.localize();
        c.validateObservable();
        c.applyBindingsWithValidation();
        c.validateObservable();
    }

    public function new() {
    }

    public function locale() {
        var locale = "ja-JP";
        var ret: String = Validation.locale(locale);
    }

    public function localize() {
        var arg = ["foo", "bar", "baz"];
        Validation.localize(arg);
    }

    public function validateObservable() {
        var obs = Knockout.observable();
        var ret: Bool = Validation.validateObservable(obs);
    }

    public function applyBindingsWithValidation() {
        KnockoutValidation.applyBindingsWithValidation({});
    }

    public function validatedObservable() {
        var ret: Observable<String> = KnockoutValidation.validatedObservable("test");
    }
}
