## ER 図

https://drive.google.com/file/d/1h3skj6EwPActTEtexfN-VHVX4ySSkrc6/view?usp=sharing


## 開発開始
開発ディレクトリ top で docker-compose up

hasura migrate apply
hasura md apply
hasura seeds apply

## session variables の設定

x-hasura-role=user
x-hasura-user-id=1から3

## query

query {
  tweet {
    body
    user {
      name
    }
  }
}
