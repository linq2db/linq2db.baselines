-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id,
	x.Country,
	x.State
FROM
	CountryStateTable x
WHERE
	(x.Country, x.State) IN (('US', 'CA'), ('US', 'NY'))

