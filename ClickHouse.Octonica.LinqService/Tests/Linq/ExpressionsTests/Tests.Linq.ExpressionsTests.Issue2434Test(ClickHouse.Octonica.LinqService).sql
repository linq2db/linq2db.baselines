BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.FirstName,
	t1.LastName,
	concat(Coalesce(t1.FirstName, ''), ' ', Coalesce(t1.LastName, ''))
FROM
	Issue2434Table t1
ORDER BY
	concat(Coalesce(t1.FirstName, ''), ' ', Coalesce(t1.LastName, ''))

