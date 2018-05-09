possible_domains = {}
com_domain = namecheap check domain:'{{brand_name}}.com'
io_domain = namecheap check domain:'{{brand_name}}.io'
co_domain = namecheap check domain:'{{brand_name}}.co'
net_domain = namecheap check domain:'{{brand_name}}.net'

if com_domain.Available
  possible_domains.com_domain = '{{brand_name}}.com'
if io_domain.Available
  possible_domains.com_domain = '{{brand_name}}.io'
if co_domain.Available
  possible_domains.com_domain = '{{brand_name}}.co'
if net_domain.Available
  possible_domains.com_domain = '{{brand_name}}.net'

return possible_domains
