BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Child c_1
		INNER ANY JOIN Parent p ON c_1.ParentID = p.ParentID

