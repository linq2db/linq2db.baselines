-- YDB Ydb
SELECT
	r.Id as Id,
	CASE
		WHEN r.N IS NULL THEN NULL
		ELSE Unicode::Substring(r.S, CAST(Unicode::GetLength(r.S) - r.N AS UInt32), r.N)
	END as c1
FROM
	RightValues r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.S as S,
	t1.N as N
FROM
	RightValues t1

-- YDB Ydb
SELECT
	r.Id as Id,
	r.S as S,
	r.N as N
FROM
	RightValues r
WHERE
	Unicode::Substring(r.S, CAST(Unicode::GetLength(r.S) - r.N AS UInt32), r.N) = 'ohn'u AND
	r.N IS NOT NULL

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.S as S,
	t1.N as N
FROM
	RightValues t1

