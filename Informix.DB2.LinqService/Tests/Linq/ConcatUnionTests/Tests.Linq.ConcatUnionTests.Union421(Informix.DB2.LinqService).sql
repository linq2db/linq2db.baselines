BeforeExecute
-- Informix.DB2 Informix

SELECT
	p_2.val
FROM
	(
		SELECT
			p.ParentID,
			't'::BOOLEAN as val
		FROM
			Parent p
		UNION
		SELECT
			p_1.ParentID,
			'f'::BOOLEAN as val
		FROM
			Parent p_1
		UNION
		SELECT
			ch.ParentID,
			'f'::BOOLEAN as c1
		FROM
			Child ch
	) p_2

