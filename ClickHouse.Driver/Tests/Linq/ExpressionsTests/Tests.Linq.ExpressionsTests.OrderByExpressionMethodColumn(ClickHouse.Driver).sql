-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.FirstName,
	t1.LastName,
	concat(Coalesce(t1.FirstName, ''), ' ', Coalesce(t1.LastName, ''))
FROM
	FullNameColumnTable t1
ORDER BY
	concat(Coalesce(t1.FirstName, ''), ' ', Coalesce(t1.LastName, ''))

