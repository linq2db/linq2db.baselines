BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p1.ParentID,
	p1.Value1
FROM
	Parent p1
WHERE
	p1.ParentID > toInt32(3)
UNION DISTINCT
SELECT
	p2.ParentID,
	p2.Value1
FROM
	Parent p2
WHERE
	p2.ParentID <= toInt32(3)

