-- DuckDB
SELECT
	i.Id,
	i."Value",
	i.GroupId,
	i.Name
FROM
	BatchItem i
WHERE
	i.Id < 3
LIMIT 2

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
	i.Id,
	i."Value",
	i.GroupId,
	i.Name
FROM
	BatchItem i
WHERE
	i.Id < 3

