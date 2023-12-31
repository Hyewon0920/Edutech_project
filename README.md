# [Edutech_project](https://github.com/EduTechProjects)

## 📚토킹메이트
#### 오픽 수험생을 위한 스피킹 연습 웹사이트
<br>

### 💡 서비스 소개
> 토킹메이트는 오픽 수험생들을 대상으로 한 영어 말하기 연습 서비스입니다. <br>
> 오픽 빈출 주제인 음식, 여행, 가족 중에서 사용자가 원하는 주제를 선택할 수 있고, 주제별로 3개의 질문이 제공됩니다. <br>
> 사용자의 음성을 인식한 뒤, 생성형 AI(ChatGPT)를 이용해 답변에 대한 문맥 피드백을 제공합니다.
### ⚒ 개발 순서
1. [ASR_model](https://github.com/pongjin/ASR_flask_api) 구축
2. add lm으로 정확도 향상
3. 도커 컨테이너 배포 << here❗❗

### 도커컨테이너 구축 코드
폴더 안에 app.py가 존재해야합니다! app.py는 상단 링크를 통해 다운로드받으실 수 있습니다.
```
#cmd창에 쓰세요
#윈도우 기준입니다
#도커 이미지 안에 포함하고 싶은 파일이 존재하는 디렉토리로 이동합니다
cd {원하는 파일 경로}
# 도커가 깔려있는지 확인 후 {}안에 원하는 도커이미지 이름을 넣습니다. 임의로 작성하시면 됩니다.
docker build -t {원하는 이미지 이름}
# 도커 컨테이너 실행코드입니다. app.py안에 성공코드가 5001이기 때문에 5001을 넣었습니다. 열고자하는 서버 이름은 굳이 작성하지 않아도 됩니다. 작성하지않으면 랜덤으로 도커에서 서버이름을 짓고 열어줍니다
docker run --name {열고자하는 서버 이름} -p 5001:5001 {원하는 이미지 이름} 
```
