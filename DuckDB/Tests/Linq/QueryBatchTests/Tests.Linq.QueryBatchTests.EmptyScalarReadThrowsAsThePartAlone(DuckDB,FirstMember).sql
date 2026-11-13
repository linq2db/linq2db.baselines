-- DuckDB
SELECT
	i.Id,
	i."Value",
	i.GroupId,
	i.Name
FROM
	BatchItem i
WHERE
	i.Id > 100
ORDER BY
	i.Id
LIMIT 1

-- DuckDB
SELECT
	t1.Id,
	t1."Value",
	t1.GroupId,
	t1.Name
FROM
	BatchItem t1

-- DuckDB
SELECT
	(
		SELECT
			i.Id
		FROM
			BatchItem i
		WHERE
			i.Id > 100
		ORDER BY
			i.Id
		LIMIT 1
	)

