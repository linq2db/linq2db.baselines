-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) t1

