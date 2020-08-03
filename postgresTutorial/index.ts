// type Articles = Article[];
//
// const articles: Articles = [
//   {
//     id: 1,
//     name: "this is react article",
//     category: "react",
//   },
//   {
//     id: 2,
//     name: "this is rdb article",
//     category: "rdb",
//   },
// ];
//
// type Article = {
//   id: number;
//   name: string;
//   category: string;
// };
//
// const insertIntoArticles = (...x: (keyof Article)[]) => {
//   const kaeshitaiFunction = (...args: [Article[x[0]] ,Article[x[1]], Article[x[2]]) => {}
//
//   return kaeshitaiFunction
// }
//
// const kaettekitaFunction = insertIntoArticles('id', "name", "category")
//
// kaettekitaFunction([
//     1, // id の方である number しかうけない
//   'name のtypeである string しかうけない',
//   "category のtypeである string しかうけない"
// ])
// // っていれた
//
//
//
// // type MakeBlar<T, K extends keyof T> = T[K];
