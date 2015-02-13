package test;

import knockout.Observable;
import knockout.Knockout;
import knockoutValidation.Error;
import knockoutValidation.KnockoutValidation;

class Compile {
    static function main() {
        var c = new Compile();
        c.locale();
        c.localize();
        c.validateObservable();
        c.applyBindingsWithValidation();
        c.validateObservable();
        c.group_by_one();
        c.group_error();
        c.defineLocale();
    }

    public function new() {
    }

    public function locale() {
        var locale = "ja-JP";
        var ret: String = KnockoutValidation.validation.locale(locale);
    }

    public function localize() {
        var arg = ["foo", "bar", "baz"];
        KnockoutValidation.validation.localize(arg);
    }

    public function validateObservable() {
        var obs = Knockout.observable();
        var ret: Bool = KnockoutValidation.validation.validateObservable(obs);
    }

    public function applyBindingsWithValidation() {
        KnockoutValidation.applyBindingsWithValidation({});
    }

    public function validatedObservable() {
        var ret: Observable<String> = KnockoutValidation.validatedObservable("test");
    }

    public function group_by_one() {
        var obs = Knockout.observable(1);
        var error: Error = KnockoutValidation.validation.group(obs, { deep: true });
        error.showAllMessages(true);
    }

    public function group_error() {
        var obs1 = Knockout.observable(1);
        var obs2 = Knockout.observable("a");
        var error: Error = KnockoutValidation.validation.group([obs1, obs2]);
        var ret: Bool = error.isAnyMessageShown();
    }

    public function defineLocale() {
        var a: Null<String> = KnockoutValidation.validation.defineLocale("test", "dayo");
        var b: String = KnockoutValidation.validation.defineLocale("test", "dayo");
    }
}
