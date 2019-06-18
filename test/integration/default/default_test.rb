# # encoding: utf-8

# Inspec test for recipe zoom::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

return unless os.windows?

query_product_name = '(Get-WmiObject -Class Win32_Product | Select -ExpandProperty Name)'

describe powershell(query_product_name) do
  its('stdout') { should match(/Zoom/) }
end
