-- DuckDB
SELECT
	r.Id,
	r.F,
	r.S,
	r.B,
	r.L
FROM
	TextRoundTripValue r
ORDER BY
	r.Id

-- DuckDB
SELECT
	t1.Id,
	t1.F,
	t1.S,
	t1.B,
	t1.L
FROM
	TextRoundTripValue t1

-- DuckDB
SELECT
	r.Id
FROM
	TextRoundTripValue r

-- DuckDB
SELECT
	t1.Id,
	t1.F,
	t1.S,
	t1.B,
	t1.L
FROM
	TextRoundTripValue t1

