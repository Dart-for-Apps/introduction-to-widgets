# [Using Material Components](lib/using-material-components.dart)

플러터는 기본적으로 메테리얼 디자인이 적용된 위젯을 제공한다.
메테리얼 디자인을 사용하기 위해서는 항상 최상위 위젯이 `MaterialApp` 위젯이어야 한다.
`MaterialApp` 위젯을 최상위 위젯으로 사용할 경우 `Navigator`와 같은
유용한 기능들을 사용할 수 있다.

# [Handling gestures](lib/handling-gestures.dart)

대부분의 앱들이 하나이상의 입력 폼을 사용한다. 사용자 인터렉션이 들어간
앱을 만드는 가장 첫 단계가 입력 폼을 사용하는 것이기 때문이다.
이를 위해서는 사용자의 입력 및 제스쳐를 감지하고 사용할 수 있어야 한다.
간단한 버튼을 이용해서 사용자의 탭 이벤트를 감지하는 코드는 직접 코드를 보면서
확인하자.

제스쳐 감지에 사용되는 위젯인 `GestureDetector` 위젯은 실제로 화면에 보여주는 시각적인
요소는 포함하지 않고, 오로지 사용자의 제스쳐만을 감지하고 처리하는데 사용된다.
사용자가 하위 위젯을 터치 했을 때 `GestureDetector`가 자동적으로
`onTap` 콜백함수를 호출 한다. 이 외에도 탭, 드래그, 줌인 등의 제스쳐를 감지하고
처리할 수 있다.

`IconButton`, `RasedButton`, `FloatingActionButton`과 같은 다양한 위젯들이
기본적으로 `GestureDetector`를 사용하여 `onPressed` 필드에 선언된 콜백을
사용해서 제스쳐를 처리할 수 있도록 구현하고 있다.