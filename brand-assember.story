http action:get path:'/assemble' as requset, response
  result = {}
  if requset.body is None or requset.body.brand_name is None
    response action:code code:400
    response action:write data:{
      'status': 'Bad request',
      'message': 'Must provide a brand_name'
    }
  else
    result.domain = next './check/domain' brand_name:requset.body.brand_name
    result.twitter = next './check/twitter' brand_name:request.body.brand_name
    result.instagram = next './check/instagram' brand_name:request.body.brand_name
    result.github = next './check/github' brand_name:requset.body.brand_name
    res action:write data:result

http action:post path:'/create/domain' as requset, response
  if requset.body is None
    response action:code code:400
    response action:write data:{
      'status': 'Bad request',
      'message': 'Must provide: DomainName, Years, RegistrantFirstName, RegistrantLastName, RegistrantAddress1, RegistrantCity,
                                RegistrantStateProvince, RegistrantPostalCode, RegistrantCountry, RegistrantPhone, RegistrantEmailAddress
                                TechFirstName, TechLastName, TechAddress1, TechCity, TechStateProvince, TechPostalCode, TechCountry, TechPhone
                                TechEmailAddress, AdminFirstName, AdminLastName, AdminAddress1, AdminCity, AdminStateProvince, AdminPostalCode
                                AdminCountry, AdminPhone, AdminEmailAddress, AuxBillingFirstName, AuxBillingLastName, AuxBillingAddress1
                                AuxBillingCity, AuxBillingStateProvince, AuxBillingPostalCode, AuxBillingCountry, AuxBillingPhone,
                                AuxBillingEmailAddress, Extended attributes'
    }
  else
    data = next './create/domain' args:req.body
    response action:write data:data
