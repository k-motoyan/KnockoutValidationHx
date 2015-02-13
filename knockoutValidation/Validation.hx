package knockoutValidation;

import knockout.Observable;

typedef Configuration = {
    ?registerExtenders: Bool,
    ?messagesOnModified: Bool,
    ?errorsAsTitle: Bool,
    ?errorsAsTitleOnModified: Bool,
    ?messageTemplate: Null<String>,
    ?insertMessages: Bool,
    ?parseInputAttributes: Bool,
    ?writeInputAttributes: Bool,
    ?decorateInputElement: Bool,
    ?decorateElementOnModified: Bool,
    ?errorClass: Null<String>,
    ?errorElementClass: String,
    ?errorMessageClass: String,
    ?allowHtmlMessages: Bool,
    ?grouping: ConfigurationGroup,
    ?validate: Dynamic,
    ?html5Attributes: Array<String>,
    ?html5InputTypes: Array<String>
}

typedef ConfigurationGroup = {
    ?deep: Bool,
    ?observable: Bool,
    ?live: Bool
}

extern class Validation {

    public var configuration: Configuration;

    public var rules: Dynamic;

    public function defineLocale(name: String, values: String): Null<String>;

    @:overload(function<T>(observable: Observable<T>, ?options: ConfigurationGroup): Error {})
    public function group(observable_group: Array<Observable<Dynamic>>): Error;

    public function locale(name: String): String;

    public function localize(msgTranslations: Array<String>): Void;

    public function validateObservable<T>(observable: Observable<T>): Bool;

}
