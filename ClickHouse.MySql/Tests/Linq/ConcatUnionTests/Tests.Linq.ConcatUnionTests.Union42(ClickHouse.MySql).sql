-- ClickHouse.MySql ClickHouse

SELECT
	p_1.val
FROM
	(
		SELECT
			p.ParentID as id,
			toBool(true) as val
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			ch.ParentID as id,
			toBool(false) as val
		FROM
			Child ch
	) p_1

