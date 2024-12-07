BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
		) THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

