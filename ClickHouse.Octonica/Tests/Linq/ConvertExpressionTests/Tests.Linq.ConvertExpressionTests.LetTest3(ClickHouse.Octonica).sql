-- ClickHouse.Octonica ClickHouse

SELECT
	(
		SELECT
			t1.ParentID as ParentID
		FROM
			Child t1
		LIMIT 1
	)
FROM
	Parent p

