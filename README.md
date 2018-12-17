# Introduction to Widgets

본 저장소는 플러터 공식 홈페이지의 [introduction to widgets](https://flutter.io/docs/development/ui/widgets-intro) 가이드를 따라하는 저장소 입니다. 

## 코드 해설

코드 해설은 전체 코드가 아닌 각 챕터 중 중요한 부분만 진행합니다. 상세 해석은 직접 코드를 참조하길 바랍니다. 코드 및 해설은 천천히 추가 됩니다. 

- [Hello World](hello-world.md#hello-world)
- [Basic widgets](hello-world.md#basic-widgets)
- [Using Material Components](using-material-components.md)
- [Handling gestures](handling-gestures.md)
- [Changing widgets in response to input](changing-widgets-in-response-to-input.md)
- [Bringing it all together](bringing-it-all-together.md)
- [Responding to widget lifecycle events](responding-to-widget-lifecycle-events.md)
- [Keys](keys.md)
- [Global Keys](keys.md)

## 실행 방법

```bash
git clone https://github.com/flutter-tutorial/introduction-to-widgets.git
cd introduction-to-widgets.git
flutter upgrade
flutter run
```

메인 화면의 각 메뉴를 누를 때마다 해당하는 챕터의 완성된 뷰를 보여줍니다. 각 챕터에서 `Scaffold` 와 `appBar`를 사용하지 않더라도, 네비게이션 메뉴의 명시적 표기를 위해 `Scaffold` 위젯과 `appBar` 필드로 렌더링 합니다. 