BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p1.Value1,
	toInt32(NULL) as c1
FROM
	Parent p1
UNION DISTINCT
SELECT
	p2.Value1 as Value1,
	p2.ParentID as c1
FROM
	Parent p2

