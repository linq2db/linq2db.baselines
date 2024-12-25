BeforeExecute
-- Informix.DB2 Informix

SELECT
	p_1.val
FROM
	(
		SELECT
			p.ParentID as id,
			't'::BOOLEAN::BOOLEAN::BOOLEAN as val
		FROM
			Parent p
		UNION
		SELECT
			ch.ParentID as id,
			'f'::BOOLEAN::BOOLEAN::BOOLEAN as val
		FROM
			Child ch
	) p_1

