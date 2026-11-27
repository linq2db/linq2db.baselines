-- ClickHouse.Driver ClickHouse
SELECT
	p.Id,
	toString('str1') as Str
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id as Id,
	toString('str2') as Str
FROM
	SetLiteralTypingTable p_1

-- ClickHouse.Driver ClickHouse
SELECT
	p.Id,
	toString('str2') as Str
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id as Id,
	toString('str1') as Str
FROM
	SetLiteralTypingTable p_1

