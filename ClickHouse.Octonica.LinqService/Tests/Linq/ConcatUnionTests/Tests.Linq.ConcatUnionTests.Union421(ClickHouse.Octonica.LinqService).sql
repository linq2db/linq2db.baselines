BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p_2.val
FROM
	(
		SELECT
			p.ParentID as id,
			toBool(true) as val
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			p_1.ParentID as id,
			toBool(false) as val
		FROM
			Parent p_1
		UNION DISTINCT
		SELECT
			ch.ParentID as id,
			toBool(false) as val
		FROM
			Child ch
	) p_2

