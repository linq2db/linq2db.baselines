-- YDB Ydb
SELECT
	p.Id as Id,
	Unwrap(CAST('str1'u AS Text)) as Str
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id as Id,
	Unwrap(CAST('str2'u AS Text)) as Str
FROM
	SetLiteralTypingTable p_1

-- YDB Ydb
SELECT
	p.Id as Id,
	Unwrap(CAST('str2'u AS Text)) as Str
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id as Id,
	Unwrap(CAST('str1'u AS Text)) as Str
FROM
	SetLiteralTypingTable p_1

