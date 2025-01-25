BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p1.ParentID,
	toInt32(NULL) as c1
FROM
	Parent p1
UNION DISTINCT
SELECT
	p2.ParentID as ParentID,
	p2.Value1 as c1
FROM
	Parent p2

