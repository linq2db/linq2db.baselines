-- DuckDB

SELECT
	p.Id,
	CAST('str1' AS VARCHAR)
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id,
	CAST('str2' AS VARCHAR)
FROM
	Issue3360Table p_1

-- DuckDB

SELECT
	p.Id,
	CAST('str2' AS VARCHAR)
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id,
	CAST('str1' AS VARCHAR)
FROM
	Issue3360Table p_1

