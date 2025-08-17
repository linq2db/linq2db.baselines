BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.Id,
	p.Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	toString('str') as Str
FROM
	Issue3360Table p_1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.Id,
	toString('str') as Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	p_1.Str as Str
FROM
	Issue3360Table p_1

