BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	minOrNull(t2.ParentID)
FROM
	(
		SELECT
			t1.ParentID as ParentID
		FROM
			Parent t1
		ORDER BY
			t1.Value1
		LIMIT 3
	) t2

