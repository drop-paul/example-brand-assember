res = github api method:get endpoint:'/orgs/{{brand_name}}'

if res.status == 400
  return yes
return no
