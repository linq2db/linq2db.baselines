BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p1.ParentID,
	toInt32(NULL) as Value1
FROM
	Parent p1
UNION DISTINCT
SELECT
	toInt32(NULL) as ParentID,
	p2.Value1 as Value1
FROM
	Parent p2

