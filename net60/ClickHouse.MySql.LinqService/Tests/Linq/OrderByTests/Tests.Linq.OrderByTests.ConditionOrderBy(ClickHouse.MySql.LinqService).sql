BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	CASE
		WHEN t1.ParentID > toInt32(0) AND t1.ChildID <> t1.ParentID
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END DESC,
	t1.ChildID

