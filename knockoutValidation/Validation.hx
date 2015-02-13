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
    ?grouping: ConfigurationGrouping,
    ?validate: Dynamic,
    ?html5Attributes: Array<String>,
    ?html5InputTypes: Array<String>
}

typedef ConfigurationGrouping = {
    ?deep: Bool,
    ?observable: Bool,
    ?live: Bool
}

@:native("kv")
extern class Validation {

    public static var configuration: Configuration;

    @:overload(function<T>(observable: Observable<T>, ?options: ConfigurationGrouping): Error {})
    public static function group(observable_group: Array<Observable<Dynamic>>): Error;

    public static function locale(name: String): String;

    public static function localize(msgTranslations: Array<String>): Void;

    public static function validateObservable<T>(observable: Observable<T>): Bool;

}
