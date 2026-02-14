-- ClickHouse.Driver ClickHouse

SELECT
	(
		SELECT
			t1.ChildID as ChildID
		FROM
			Child t1
		LIMIT 1
	)
FROM
	Parent p

