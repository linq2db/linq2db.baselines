-- DuckDB

SELECT
	p.Id,
	p.Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id,
	CAST('str' AS VARCHAR)
FROM
	Issue3360Table p_1

-- DuckDB

SELECT
	p.Id,
	CAST('str' AS VARCHAR)
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id,
	p_1.Str
FROM
	Issue3360Table p_1

