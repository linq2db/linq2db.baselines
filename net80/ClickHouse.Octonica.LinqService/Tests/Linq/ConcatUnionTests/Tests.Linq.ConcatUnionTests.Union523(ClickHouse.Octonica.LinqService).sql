BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p1.ParentID,
	NULL
FROM
	Parent p1
UNION DISTINCT
SELECT
	p2.ParentID,
	p2.Value1
FROM
	Parent p2

