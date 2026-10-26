-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	rightUTF8(r.S, r.N)
FROM
	RightValues r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.S,
	t1.N
FROM
	RightValues t1

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	r.S,
	r.N
FROM
	RightValues r
WHERE
	rightUTF8(r.S, r.N) = 'ohn'

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.S,
	t1.N
FROM
	RightValues t1

