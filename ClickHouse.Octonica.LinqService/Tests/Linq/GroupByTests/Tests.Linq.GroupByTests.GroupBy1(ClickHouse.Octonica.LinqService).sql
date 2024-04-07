BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t3.ParentID
FROM
	(
		SELECT
			t2.ParentID as ParentID
		FROM
			(
				SELECT
					t1.ParentID as ParentID
				FROM
					Child t1
				GROUP BY
					t1.ParentID
			) t2
		GROUP BY
			t2.ParentID
	) t3
GROUP BY
	t3.ParentID

