BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Child t1
		) THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

