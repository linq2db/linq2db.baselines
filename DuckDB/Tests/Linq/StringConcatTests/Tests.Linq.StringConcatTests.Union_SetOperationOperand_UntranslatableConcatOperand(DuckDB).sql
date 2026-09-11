-- DuckDB
SELECT
	CAST('p_' AS VARCHAR),
	e.Id,
	CAST('N' AS VARCHAR),
	e.Name
FROM
	ConcatSetOpEntity e
WHERE
	e.Name IS NOT NULL
UNION
SELECT
	CAST('p_' AS VARCHAR),
	e_1.Id,
	CAST('N' AS VARCHAR),
	e_1.Name
FROM
	ConcatSetOpEntity e_1
WHERE
	e_1.ParentId IS NULL

-- DuckDB
SELECT
	t1.Id,
	t1.ParentId,
	t1.Name
FROM
	ConcatSetOpEntity t1

