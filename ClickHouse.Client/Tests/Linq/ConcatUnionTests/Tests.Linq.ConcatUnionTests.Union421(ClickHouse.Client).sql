BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p_2.val
FROM
	(
		SELECT
			p.ParentID as ParentID,
			toBool(true) as val
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			p_1.ParentID as ParentID,
			toBool(false) as val
		FROM
			Parent p_1
		UNION DISTINCT
		SELECT
			ch.ParentID as ParentID,
			toBool(false) as c1
		FROM
			Child ch
	) p_2

