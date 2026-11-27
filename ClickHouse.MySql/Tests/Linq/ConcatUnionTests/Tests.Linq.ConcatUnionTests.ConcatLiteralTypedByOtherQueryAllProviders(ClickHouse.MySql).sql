-- ClickHouse.MySql ClickHouse
SELECT
	p.Id,
	p.Str
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id as Id,
	toString('str') as Str
FROM
	SetLiteralTypingTable p_1

-- ClickHouse.MySql ClickHouse
SELECT
	p.Id,
	toString('str') as Str
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id as Id,
	p_1.Str as Str
FROM
	SetLiteralTypingTable p_1

