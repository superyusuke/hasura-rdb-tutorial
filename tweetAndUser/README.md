## ER 図

https://drive.google.com/file/d/1h3skj6EwPActTEtexfN-VHVX4ySSkrc6/view?usp=sharing


## 開発開始
開発ディレクトリ top で docker-compose up

hasura migrate apply
hasura md apply
hasura seeds apply

## session variables の設定

x-hasura-role=user
x-hasura-user-id= 1 || 2 || 3

- user 1 の場合は、全 tweet 見える
- user 2 の場合も、全 tweet 見える
- user 3 は一部見えない。具体的には user1 が is_public = false の tweet を持っており、それが見えない。

## query

query {
  tweet {
    body
    user {
      name
    }
  }
}
