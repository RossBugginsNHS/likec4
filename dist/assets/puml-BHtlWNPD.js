function e(n){switch(n){case"index":return`@startuml
title "Landscape view"
top to bottom direction

hide stereotype
skinparam ranksep 60
skinparam nodesep 30
skinparam {
  arrowFontSize 10
  defaultTextAlignment center
  wrapWidth 200
  maxMessageSize 100
  shadowing false
}

skinparam rectangle<<Customer>>{
  BackgroundColor #3b82f6
  FontColor #eff6ff
  BorderColor #2563eb
}
skinparam rectangle<<Saas>>{
  BackgroundColor #3b82f6
  FontColor #eff6ff
  BorderColor #2563eb
}
rectangle "==Customer" <<Customer>> as Customer
rectangle "==Our SaaS" <<Saas>> as Saas

Customer .[#6E6E6E,thickness=2].> Saas : "<color:#6E6E6E>opens in browser<color:#6E6E6E>"
@enduml
`;default:throw new Error("Unknown viewId: "+n)}}export{e as pumlSource};
