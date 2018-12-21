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

