-- ClickHouse.Octonica ClickHouse

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
		LIMIT 1, 7
	) t2
ORDER BY
	t2.ChildID
LIMIT 2, 18446744073709551615

