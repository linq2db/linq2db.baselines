BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			t1.ChildID as ChildID
		FROM
			Child t1
		LIMIT toInt32(2), toInt32(5)
	) t2

