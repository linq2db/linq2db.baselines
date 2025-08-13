BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p1.Value1,
	toInt32(NULL) as ParentID
FROM
	Parent p1
UNION DISTINCT
SELECT
	p2.Value1 as Value1,
	p2.ParentID as ParentID
FROM
	Parent p2

