-- ClickHouse.Driver ClickHouse
SELECT
	i.Id
FROM
	BatchItem i
WHERE
	i.Id > 100
LIMIT 1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Value,
	t1.GroupId,
	t1.Name
FROM
	BatchItem t1

-- ClickHouse.Driver ClickHouse
SELECT
	(
		SELECT
			i.Id
		FROM
			BatchItem i
		WHERE
			i.Id > 100
		LIMIT 1
	)

