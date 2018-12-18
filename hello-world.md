## Hello World

다른 어느 언어에서나 그렇듯이 가장 기본적인 코드입니다.
`Dart` 코드의 시작점인 `main()` 함수에서 플러터의 앱을 실행하는
`runApp()`함수를 호출해 단순한 위젯을 렌더링 하는것으로 끝이 납니다.

`runApp()` 함수는 인자로 주어지는 **Widget**을 렌더링 하고
해당 위젯을 위젯 트리의 최상위 루트 노드로 지정합니다.
예제 코드에서는 `Center` 위젯과 `Text` 위젯을 사용하고 있습니다.
`Scaffold`나 `Material`과 같은 기본 UI를 제공하는 위젯이 아닌 경우에는
`Text` 위젯의 `textDirection` 필드를
`textDirection: TextDirection.ltr`과 같이 직접 지정해주어야 합니다.

각 위젯은 다른 위젯을 하위 위젯으로 가지고 있을 수 있으며,
위젯을 변화시킬 **state**를 관리 하느냐 안하느냐에 따라서
`StatelessWidget`과 `StatefulWidget` 중 원하는 것을 사용할 수 있습니다.
기본적으로 위젯들이 해야 할 일은 `build` 함수를 구현하여
어떤 뷰를 보여줄 지 결정하는 것입니다.

## Basic Widgets

`Scaffold` 위젯은 메테리얼 디자인의 기본 구조를 가지고 있는 위젯으로,
`appBar` 등과 같은 기본 구성요소들은 구현하고 있다.