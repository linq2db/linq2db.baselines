BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID > toInt32(1)
ORDER BY
	p.ParentID
LIMIT toInt32(1), toInt32(1)

