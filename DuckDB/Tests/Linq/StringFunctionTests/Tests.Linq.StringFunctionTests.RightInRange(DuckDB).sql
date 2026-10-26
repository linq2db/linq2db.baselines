-- DuckDB
SELECT
	r.Id,
	RIGHT(r.S, r.N)
FROM
	RightValues r
ORDER BY
	r.Id

-- DuckDB
SELECT
	t1.Id,
	t1.S,
	t1.N
FROM
	RightValues t1

-- DuckDB
SELECT
	r.Id,
	r.S,
	r.N
FROM
	RightValues r
WHERE
	RIGHT(r.S, r.N) = 'ohn'

-- DuckDB
SELECT
	t1.Id,
	t1.S,
	t1.N
FROM
	RightValues t1

