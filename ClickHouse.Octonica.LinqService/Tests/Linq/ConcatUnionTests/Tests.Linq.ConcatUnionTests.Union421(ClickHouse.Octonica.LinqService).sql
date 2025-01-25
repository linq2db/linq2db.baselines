BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_2.val
FROM
	(
		SELECT
			p.ParentID as id,
			true as val
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			p_1.ParentID as id,
			false as val
		FROM
			Parent p_1
		UNION DISTINCT
		SELECT
			ch.ParentID as id,
			false as val
		FROM
			Child ch
	) p_2

