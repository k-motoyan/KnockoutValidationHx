package knockoutValidation;

import knockout.Observable;
import js.html.Node;

@:native("ko")
extern class KnockoutValidation {

    public static var validation: Validation;

    public static function applyBindingsWithValidation(viewModel: Dynamic, ?rootNode: Node, ?options: Dynamic): Void;

    public static function validatedObservable<T>(initialValue: T, ?options: Dynamic): Observable<T>;

}
