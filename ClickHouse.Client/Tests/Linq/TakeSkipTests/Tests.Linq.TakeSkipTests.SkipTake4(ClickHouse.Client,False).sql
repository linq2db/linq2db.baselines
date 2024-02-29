BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t2.ParentID,
	t2.ChildID
FROM
	(
		SELECT
			t1.ChildID as ChildID,
			t1.ParentID as ParentID
		FROM
			Child t1
		ORDER BY
			t1.ChildID DESC
		LIMIT toInt32(1), toInt32(7)
	) t2
ORDER BY
	t2.ChildID
LIMIT toInt32(2), 18446744073709551615

