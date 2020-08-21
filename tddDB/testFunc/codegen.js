const dotenv = require("dotenv");
dotenv.config();

module.exports = {
  schema: [
    {
      // "http://localhost:8081/v1/graphql": {
      //   headers: {
      //     "x-hasura-admin-secret": process.env.HASURA_GRAPHQL_ADMIN_SECRET,
      //   },
      // },
      "http://localhost:8081/v1/graphql": {},
    },
  ],
  overwrite: true,
  generates: {
    "./src/types/generated/request.ts": {
      documents: "src/**/*.ts",
      plugins: [
        "typescript",
        "typescript-operations",
        "typescript-graphql-request",
      ],
      config: {
        rawRequest: true,
        skipTypename: true,
      },
    },
    "./graphql.schema.json": {
      plugins: ["introspection"],
    },
  },
};
