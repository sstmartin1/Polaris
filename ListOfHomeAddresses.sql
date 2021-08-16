select DISTINCT p.Barcode,pr.PatronFullName,addr.StreetOne,addr.StreetTwo,pos.City,pos.State,pos.PostalCode
from Polaris.PatronRegistration pr with (nolock)
inner join Polaris.Patrons p with (nolock)
on (pr.PatronID = p.PatronID)
left join Polaris.PatronAddresses pa with (nolock)
on (pr.PatronID = pa.PatronID)
left join Polaris.Addresses addr with (nolock)
on (pa.AddressID = addr.AddressID)
left join Polaris.PostalCodes pos with (nolock)
on (addr.PostalCodeID = pos.PostalCodeID)
where p.PatronCodeID in (7,17,18,20,25,27,28,32,34,42,47)
AND pa.AddressLabelID = 1
order by StreetOne
