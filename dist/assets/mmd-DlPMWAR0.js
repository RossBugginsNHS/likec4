function e(n){switch(n){case"index":return`---
title: "Landscape view"
---
graph TB
  Customer[Customer]
  Saas[Our SaaS]
  Customer -. "opens in browser" .-> Saas
`;default:throw new Error("Unknown viewId: "+n)}}export{e as mmdSource};
