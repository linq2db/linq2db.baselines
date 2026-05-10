-- DuckDB

SELECT
	i.Id
FROM
	Tender i

-- DuckDB

SELECT
	t1.Id,
	t1.Name
FROM
	Tender t1

-- DuckDB

SELECT
	r.Id
FROM
	Tender r
WHERE
	r.Id = '00000000-0000-0000-0000-000000000000'::UUID
LIMIT 1

-- DuckDB

SELECT
	i.Id
FROM
	Tender i
LIMIT 1

