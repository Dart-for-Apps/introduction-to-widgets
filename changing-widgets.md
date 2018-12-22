# [Changing widgets in response to input](lib/changing-widgets.dart)

이 전까지의 예제 코드들은 모두 `StatelessWidget` 만을 사용하고 있다. Stateless
widget 들은 상위 위젯으로 부터 필요한 인자를 전달 받아 사용하고, 해당 위젯의
`final` 멤버 변수에 사용할 값을 저장한 뒤 값에 대한 변경 없이 화면을 구성한다.

사용자의 입력에 반응하여 앱을 변화 시키는 복잡한 앱을 구현하기 위해서는
**state**를 관리하는 위젯을 만들어야 한다. 플러터에서는 `StatefulWidget`을
사용한다. `StatefulWidget`은 `State` 객체를 생성하고 관리한다. 실제 코드를 보면서
공부해보길 바란다.

코드를 본 경우 `StatefulWidget`과 `State` 위젯이 각각의 객체로 분리되어 있음을
확인할 수 있다. 플러터에서는 이 두 위젯이 서로 다른 생명 주기 (life cycle)을
가지고 있다. Widget의 경우에는 화면에 보여주는 뷰를 만들기 전까지만 데이터를
보관하는 임시 객체로 사용되고, State의 경우에는 매 `build()` 콜 사이의
state 정보들을 영구적으로 보관하는데 사용된다.

## [State 관리 및 전달의 방향성 개선](lib/changing-widgets2.dart)

[첫 State 관리 예제](lib/changing-widgets.dart)는 사용자의 입력을 받아서
곧바로 해당 State를 build 함수에서 사용하고 있다. 더 복잡한 앱에서는
다른 위젯 계층구조에 있는 컴포넌트가 State 사용을 원하는 경우도 있다.
예를 들어 현재 시간이나 사용자의 위치정보들을 하나의 위젯에서 입력받고
같은 앱내의 다른 뷰나 위젯에서 해당 정보를 이용해 위젯 모양이나 데이터를
변경하는 경우들이 있다.

기본 예제에서 단순히 State를 하위 위젯으로 전달하는 flow "down" 구조에서 나아가,
플러터에서는 콜백을 통해서 *flow "up"* 구조를 사용할 수 있다.
[두번째 State 관리 예제](lib/changing-widgets2.dart)가 자세한
코드를 가지고 있다.

코드를 확인해보면, State를 관리하는 위젯, State를 변경하는 위젯, State를
사용해서 뷰를 구성하는 위젯을 모두 분리한 것을 볼 수 있다. 첫 예제와
두번째 예제가 모두 같은 화면을 보여주지만, 코드의 분리를 통해서 각
위젯 파트들에 대한 독립적 캡슐화를 제공하고 상위 위젯을 수정하기 편하게 하는 장점이 있다.