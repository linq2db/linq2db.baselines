BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Child t1
		ALL LEFT SEMI JOIN Parent p ON t1.ParentID = p.ParentID

