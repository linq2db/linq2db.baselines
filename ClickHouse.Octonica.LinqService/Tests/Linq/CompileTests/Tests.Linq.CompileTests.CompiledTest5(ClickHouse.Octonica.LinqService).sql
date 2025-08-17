BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1 AND p.Value1 = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 2 AND p.Value1 IS NULL

