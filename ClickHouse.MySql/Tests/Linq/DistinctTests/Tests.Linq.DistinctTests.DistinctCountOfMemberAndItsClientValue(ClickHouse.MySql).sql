-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			c_1.ChildID as ChildID
		FROM
			Child c_1
	) t1

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			x.ChildID as ChildID
		FROM
			Child x
		WHERE
			x.ChildID > 20
	) t1

-- ClickHouse.MySql ClickHouse
SELECT
	maxOrNull(t1.ChildID)
FROM
	(
		SELECT DISTINCT
			c_1.ChildID as ChildID
		FROM
			Child c_1
	) t1

