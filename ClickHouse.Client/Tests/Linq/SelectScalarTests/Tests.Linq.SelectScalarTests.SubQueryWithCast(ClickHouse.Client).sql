BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			t1.Value1 as Value1,
			(
				SELECT
					r.Value1
				FROM
					Parent r
				LIMIT 1
			) as Value1_1
		FROM
			Parent t1
	) t2
WHERE
	t2.Value1_1 IS NOT NULL

