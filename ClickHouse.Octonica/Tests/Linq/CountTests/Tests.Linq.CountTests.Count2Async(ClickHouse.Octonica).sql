BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID > toInt32(2)

