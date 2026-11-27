-- YDB Ydb
SELECT
	x.Id as Id,
	x.Country as Country,
	x.`State` as State_1
FROM
	CountryStateTable x
WHERE
	(x.Country, x.`State`) IN (('US'u, 'CA'u), ('US'u, 'NY'u))

