BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	CASE
		WHEN t1.ParentID > toInt32(0) AND t1.ChildID <> t1.ParentID
			THEN true
		ELSE false
	END DESC,
	t1.ChildID

