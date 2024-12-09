BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Value1
FROM
	Parent x
WHERE
	Coalesce(x.Value1, 100) > 10

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Value1
FROM
	Parent p

