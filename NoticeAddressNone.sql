--Would want to limit by expiration date and maybe branch.
--This works in the Find Tool.

SELECT DISTINCT(pa.PatronID)
FROM Polaris.Polaris.PatronAddresses AS [pa] WITH (NOLOCK)
WHERE pa.PatronID NOT IN (SELECT DISTINCT(pa.PatronID)
FROM Polaris.Polaris.PatronAddresses AS [pa] WITH (NOLOCK)
WHERE pa.AddressTypeID = '2')
