-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Value,
	t1.GroupId,
	t1.Name
FROM
	BatchItem t1
ORDER BY
	t1.Id
LIMIT 3

-- ClickHouse.Driver ClickHouse
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			BatchItem t1
	)

