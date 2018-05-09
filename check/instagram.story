res = instagram api method:get endpoint:'/users/search?q={{brand_name}}'

if res.status == 400
  return yes
return no
