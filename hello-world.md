## [Hello World](lib/helloworld.dart)

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

## [Basic Widgets](lib/basic-widgets.dart)

Flutter에서 가장 자주 사용되는 위젯들은 아래와 같다.

- `Text`: `Text` 위젯은 스타일을 지정할 수 있는 텍스트 위젯을 제공한다.
- `Row`, `Column`: 각 위젯 모두 원하는 방향으로 하위 위젯들을 정렬하는 기능을 제공한다.
`Row` 위젯은 가로 방향으로 위젯들을 정렬하고, `Column` 위젯은 세로 방향으로 정렬한다.
웹에서의 `flex`와 같은 개념으로 사용된다.
- `Stack`: 한 화면에 같은 레이아웃에 위젯을 줄줄이 보여주지 않고, 계층 구조를 갖고
하나의 위젯이 다른 위젯의 배경 혹은 전경이 되도록 배치할 때 사용한다. `Stack` 위젯의
하위 위젯들은 `Positioned` 위젯을 이용해 그 위치를 지정할 수 있다. 웹에서의 `absolute`와
같은 개념으로 사용된다.
- `Container`: 사각형 모양의 위젯을 만들 때 사용한다. `BoxDecoration` 위젯을 통해서
모양이나 배경을 설정할 수 있다. 기본적으로 margin, padding, constraints 등을
옵션으로 제공한다. 원하는 경우에는 3차원 축을 사용할 수도 있다.
- `Scaffold`: `Scaffold` 위젯은 메테리얼 디자인의 기본 구조를 가지고 있는 위젯으로,
`appBar` 등과 같은 기본 구성요소들은 구현하고 있다.

예제 코드는 직접 확인하길 바란다. 기본 제공되는 메테리얼 아이콘 세트를
앱 내에서 사용하고자 하는 경우에는 `pubspec.yaml`에 `use-material-design: true`를
추가해야 한다.

```yaml
name: my_app
flutter:
    uses-material-design: true
```

메테리얼 테마를 그대로 사용하여 원하는 메테리얼 디자인으로 앱을 구성하기 위해서는
`MaterialApp` 위젯을 최상위 위젯으로 사용하여야 한다.

`Expanded` 위젯은 같은 형제 레벨의 위젯들이 사용하고 남은 공간을 모두 사용하도록
위젯의 크기를 확장시켜주는 위젯이다. 웹에서 flex를 사용할때 각 구성요소의
화면 차지 비율을 정하는 것처럼 `flex` 필드에 위젯의 비율을 지정할 수 있다.