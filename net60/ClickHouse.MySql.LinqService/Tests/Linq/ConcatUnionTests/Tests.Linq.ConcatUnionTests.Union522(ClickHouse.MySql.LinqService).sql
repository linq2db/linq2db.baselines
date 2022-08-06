BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p1.Value1,
	NULL
FROM
	Parent p1
UNION DISTINCT
SELECT
	p2.Value1,
	p2.ParentID
FROM
	Parent p2

