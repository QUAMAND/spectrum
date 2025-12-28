# Spectrum

### 📖 Description
주어진 문자의 색상을 그라데이션하여 출력하는 데이터 팩입니다.

> 불러오기: `/reload`  
> 삭제하기: `/function sr:uninstall {key:QUAM12}`  

# ⚙️ 기능
## 1. 문자 그라데이션
- 그라데이션 시작하기
   ```mcfunction
   # 매크로 이용
   /function sr:run {text:"test text", colors:["FF0000", "00FFFF"], style:[bold, italic]}

   # 저장소 사용
   /data merge storage test: {text:"test text from storage", colors:["FF0000", "00FFFF"], style:[underlined]}
   /function sr:run with storage test:
   ```

글자 수와 색상 단계에 맞춰 자동으로 그라데이션을 생성합니다.  
생성된 텍스트의 `raw` 형식은 `[{text, color, style}, ...]`입니다.
- `raw` 저장 경로: `sr:raw text`

### options
- 스타일 지정(기본 설정: `false`)
   - bold
   - italic
   - underline
   - ...

<br/>

## Fin.