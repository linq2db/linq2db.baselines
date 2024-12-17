BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				p.ParentID
			FROM
				Parent p
			UNION ALL
			SELECT
				p_1.ParentID
			FROM
				Parent p_1
		)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM table(set{1})

