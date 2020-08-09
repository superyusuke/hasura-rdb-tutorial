type User = {
  id: number;
  name: string;
};

type Article = {
  id: number;
  userId: number;
  title: string;
};

type Users = {
  id: number;
  name: string;
  articles: Article[];
}[];

const users: Users = [
  {
    id: 0,
    name: "nakanishi",
    articles: [
      {
        id: 0,
        title: "react",
        userId: 0,
      },
      {
        id: 1,
        title: "css",
        userId: 0,
      },
    ],
  },
];
