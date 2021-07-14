# How to create github blog with static site generator Franklin.jl

## What is Franklin.jl?

## How to setup?

## How to add pages?

You can create md file and link it with homepage.

## How to add pages?

모든 마크다운 문서를 페이지로 전환한다. 그리고 그 상대적 위치가 path가 된다.
페이지 자체는 문서로 만들면 되고 어떻게 연결 시킬 것인지는 다른 문제다.

## How to make article list?

I think it does not have auto article generator.
I may can make an page list generator. With some css.

## How to change theme?

asset, css, layout을 바꾸면 될 것 같다. 결국 테마가 이거니까?

## More information

기본적으로 이거 괜찮아졌는데? 예전엔 한국어 입력이 불편했는데 이젠 괜찮네? 앞으로 이걸로 글쓰기 해도 될듯?

## Deploy

워래는 자동으로 deploy.yml이 생성 되는 듯 했는데 이유는 모르겠지만 내꺼에서는 안된다.
그렇지만 방법이 없는 건 아니다. 
직접 `.github/workflow`에다가 만들어 넣으면 된다.

deploy.yml은 간단하게 살펴보면 일종의 스크립트다.
해야 할 일들을 적어 둘 수 있는데 몇가지 규칙이 있는 것 같다.
그 규칙을 몰라서 처음에는 난해해 보일 수 있는데 조금씩 뜯어서 보니 커널에 치는 것과 비슷해 보였다.