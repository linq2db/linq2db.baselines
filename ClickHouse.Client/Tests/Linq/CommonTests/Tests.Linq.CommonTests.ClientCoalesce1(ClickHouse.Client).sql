BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Value1
FROM
	Parent x
WHERE
	Coalesce(x.Value1, 100) > 10

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Value1
FROM
	Parent p

