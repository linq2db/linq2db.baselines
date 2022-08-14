BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			t1.Value1 as Value1
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
		LIMIT toInt32(3)
	) t2

