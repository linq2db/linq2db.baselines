BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Child t1
		ALL LEFT JOIN Parent p ON t1.ParentID = p.ParentID

