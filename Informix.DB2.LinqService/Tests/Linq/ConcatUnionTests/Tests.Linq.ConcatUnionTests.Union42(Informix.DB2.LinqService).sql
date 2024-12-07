BeforeExecute
-- Informix.DB2 Informix

SELECT
	p_1.val
FROM
	(
		SELECT
			p.ParentID,
			't'::BOOLEAN as val
		FROM
			Parent p
		UNION
		SELECT
			ch.ParentID,
			'f'::BOOLEAN as val
		FROM
			Child ch
	) p_1

