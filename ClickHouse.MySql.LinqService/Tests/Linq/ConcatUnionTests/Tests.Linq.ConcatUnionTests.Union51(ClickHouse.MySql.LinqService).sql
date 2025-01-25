BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p1.ParentID,
	p1.Value1
FROM
	Parent p1
UNION DISTINCT
SELECT
	p2.ParentID as ParentID,
	toInt32(NULL) as Value1
FROM
	Parent p2

