-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t1.PersonID as PersonID
		FROM
			Person t1
		UNION DISTINCT
		SELECT
			t2.ParentID as PersonID
		FROM
			Parent t2
	) t3

