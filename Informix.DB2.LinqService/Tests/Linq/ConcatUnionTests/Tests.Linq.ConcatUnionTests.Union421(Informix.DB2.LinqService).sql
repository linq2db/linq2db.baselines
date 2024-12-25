BeforeExecute
-- Informix.DB2 Informix

SELECT
	p_2.val
FROM
	(
		SELECT
			p.ParentID as id,
			't'::BOOLEAN::BOOLEAN::BOOLEAN as val
		FROM
			Parent p
		UNION
		SELECT
			p_1.ParentID as id,
			'f'::BOOLEAN::BOOLEAN::BOOLEAN as val
		FROM
			Parent p_1
		UNION
		SELECT
			ch.ParentID as id,
			'f'::BOOLEAN::BOOLEAN::BOOLEAN as val
		FROM
			Child ch
	) p_2

