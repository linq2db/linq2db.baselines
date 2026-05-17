-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID
		FROM
			Child t1
	) t2

