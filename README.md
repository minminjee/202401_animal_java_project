야옹아 멍멍해봐 : 공공데이터를 이용한 유기견 입양 서비스
===========================================
* 유기동물 입양를 할 수 있는 웹 사이트 입니다.    
* 서울시에서 제공하는 공공데이터로 유기동물의 정보와 현황을 알 수 있고 하루 1회 업데이트 됩니다.    
* 입양 전 관심리스트를 만들어 관리 할 수 있습니다.    
* 사람들과의 커뮤티니 활동을 할  수 있습니다.    
### 1. 공공 데이터 api 파싱    
api를 사용하기 위해서는 내가 필요한 형식로 정보를 받고 파싱해서 사용한다.    
제공하는 API 형식 중에 내가 구현하려는 데이터에는 key :value가 적합하여서  JSON형태로 받았다.     
넘겨주는 데이터는 형식은 json이지만 String으로 되어있어서 데이터에 접근하기 위해서 파싱을 하였다.     
파싱된 데이터로 사진과 동물에 관련된 정보를 출력하기 용이하였고 for문을 사용하여 모든 정보에 대한 순차적인 출력도 가능하였다.      
사용하려는 api 데이터가 두개로 나눠져있다. 사진리스트와 정보리스트가 각각의 key value로 만들어져있다. (사진은 여러개)      
이걸 2차 배열로 만들었었는데 출력할때마다 너무 비효율적이다. 한번에 출력이 가능하도록 구현해보자 기능면에서는 동일 할 것이다. 

**문제**
사용하려는 두 api를 2차배열로 만들었지만 서버로 데이터 전송하기 복잡
api를 매칭하며 새로운 key에 이미지 사진 배열 저장함     
**수정 후 로직 비교**    
다시 배열에서 이미지를 가져오기 때문에 속소가 느리지만
서버로 json 형태로 전송이 간편
