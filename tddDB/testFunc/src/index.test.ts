import gql from "graphql-tag";
import { getSdk, MyArticleQuery } from "src/types/generated/request";
import { GraphQLClient } from "graphql-request";

const url = "http://localhost:8081/v1/graphql";

const graphQLClient = new GraphQLClient(url);

const client = getSdk(graphQLClient);

gql`
  mutation addArticle($articleObject: article_insert_input!) {
    insert_article(objects: [$articleObject]) {
      affected_rows
    }
  }
`;

gql`
  mutation addCategory($categoryList: [category_insert_input!]!) {
    insert_category(objects: $categoryList) {
      affected_rows
    }
  }
`;

gql`
  query myArticle {
    article {
      title
      id
      categories {
        id
      }
    }
  }
`;

const article = {
  id: 1000,
  title: `article 1000`,
};

const categoryList = [
  {
    artcileId: article.id,
    id: 1000,
    name: "category 1000",
  },
  {
    artcileId: article.id,
    id: 1001,
    name: "category 1001",
  },
];

gql`
  mutation deleteArticle($id: Int!) {
    delete_article_by_pk(id: $id) {
      id
    }
  }
`;

gql`
  mutation deleteCategory($idList: [Int!]!) {
    delete_category(where: { id: { _in: $idList } }) {
      affected_rows
    }
  }
`;

describe("iti", () => {
  it("aa", async () => {
    await client.addArticle({
      articleObject: { title: article.title, id: article.id },
    });

    await client.addCategory({
      categoryList: categoryList.map((o) => ({
        name: o.name,
        artcile_id: o.artcileId,
        id: o.id,
      })),
    });

    const { data } = await client.myArticle();

    const toBe: MyArticleQuery["article"] = [
      {
        title: article.title,
        id: article.id,
        categories: categoryList.map((o) => ({ id: o.id })),
      },
    ];

    console.log(toBe[0].categories);

    expect(data?.article).toEqual(toBe);
  });

  it("check", async () => {
    const { data } = await client.myArticle();

    const toBe: MyArticleQuery["article"] = [
      {
        title: article.title,
        id: article.id,
        categories: categoryList.map((o) => ({ id: o.id })),
      },
    ];

    console.log(toBe[0].categories);

    expect(data?.article).toEqual(toBe);
  });

  it("delete", async () => {
    await client.deleteCategory({ idList: categoryList.map((o) => o.id) });
    await client.deleteArticle({ id: article.id });
  });
});
