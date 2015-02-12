package knockoutValidation;

import knockout.Observable;

typedef Configuration = {
    registerExtenders: Bool,
    messagesOnModified: Bool,
    errorsAsTitle: Bool,
    errorsAsTitleOnModified: Bool,
    messageTemplate: Null<String>,
    insertMessages: Bool,
    parseInputAttributes: Bool,
    writeInputAttributes: Bool,
    decorateInputElement: Bool,
    decorateElementOnModified: Bool,
    errorClass: Null<String>,
    errorElementClass: String,
    errorMessageClass: String,
    allowHtmlMessages: Bool,
    grouping: ConfigurationGrouping,
    validate: Dynamic,
    html5Attributes: Array<String>,
    html5InputTypes: Array<String>
}

typedef ConfigurationGrouping = {
    deep: Bool,
    observable: Bool,
    live: Bool
}

@:native("kv")
extern class Validation {

    public static var configuration: Configuration;

    public static function group<T>(observable_group: Array<Observable<T>>, ?options: Dynamic): Error;

    public static function locale(name: String): String;

    public static function localize(msgTranslations: Array<String>): Void;

    public static function validateObservable<T>(observable: Observable<T>): Bool;

}
