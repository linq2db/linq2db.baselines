BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(2)
LIMIT toInt32(1)

