# login_dice
플러터 랜덤 주사위 굴리기 게임

## 실행 화면
![Screenshot_20211229-224910](https://user-images.githubusercontent.com/77111523/147669294-171b4170-199b-4818-b8e4-d0072355e123.jpg)
![Screenshot_20211229-224944](https://user-images.githubusercontent.com/77111523/147669336-853a0b7b-d49c-452a-a0c0-804baca1ab20.jpg)

## 설명
- ID와 PW를 입력하면 페이지가 이동하여 주사위 게임 페이지로 넘어가게 됨. (TextEditingController 사용, Navigator.push() 사용)
- 난수를 생성하여 랜덤으로 주사위 번호가 나오게 함. (Dart 난수 생성)
- 조건문 분기를 통해서 랜덤으로 나온 난수에 해당하는 이미지를 불러옴.
- 해당 주사위의 결과를 toastmessage를 사용하여 화면에 표시.

## 추가 기능
- 빈 공간 클릭 시 키보드가 사라지는 기능 추가 -> Focus 사용



### 난수 생성
```
import 'dart.math';

void main(){
  grade();
}

void grade(){
	// 1 ~ 100 까지의 수 중 난수 출력(+1 함으로써)
  int score = Random().nextInt(100) + 1;
  
  print(score);
}
```
