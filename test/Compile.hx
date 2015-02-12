package test;

import knockout.Observable;
import knockout.Knockout;
import knockoutValidation.Error;
import knockoutValidation.KnockoutValidation;
import knockoutValidation.Validation;

class Compile {
    static function main() {
        var c = new Compile();
        c.locale();
        c.localize();
        c.validateObservable();
        c.applyBindingsWithValidation();
        c.validateObservable();
        c.group_error();
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

    public function group_error() {
        var obs1 = Knockout.observable(1);
        var obs2 = Knockout.observable(2);
        var error: Error = Validation.group([obs1, obs2]);
        var ret: Bool = error.isAnyMessageShown();
    }
}
