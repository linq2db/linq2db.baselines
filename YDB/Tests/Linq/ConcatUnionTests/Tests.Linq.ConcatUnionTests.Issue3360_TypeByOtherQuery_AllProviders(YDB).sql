-- YDB Ydb

SELECT
	p.Id as Id,
	p.Str as Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	Unwrap(CAST('str'u AS Text)) as Str
FROM
	Issue3360Table p_1

-- YDB Ydb

SELECT
	p.Id as Id,
	Unwrap(CAST('str'u AS Text)) as Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	p_1.Str as Str
FROM
	Issue3360Table p_1

