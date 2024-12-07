BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p_1.val
FROM
	(
		SELECT
			p.ParentID as ParentID,
			toBool(true) as val
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			ch.ParentID as ParentID,
			toBool(false) as val
		FROM
			Child ch
	) p_1

