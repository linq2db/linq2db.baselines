BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p1.ParentID,
	NULL
FROM
	Parent p1
UNION DISTINCT
SELECT
	NULL,
	p2.Value1
FROM
	Parent p2

