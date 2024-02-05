BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p1.ParentID,
	p1.Value1
FROM
	Parent p1
UNION DISTINCT
SELECT
	p2.ParentID,
	NULL
FROM
	Parent p2

