BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.FirstName,
	t1.LastName,
	concat(t1.FirstName, ' ', t1.LastName)
FROM
	Issue2434Table t1
ORDER BY
	concat(t1.FirstName, ' ', t1.LastName)

