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
