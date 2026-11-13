-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			c_1.ChildID as ChildID
		FROM
			Child c_1
	) t1

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			t1.ChildID as ChildID
		FROM
			(
				SELECT
					c_1.ChildID as ChildID
				FROM
					Child c_1
				LIMIT 100
			) t1
	) t2

