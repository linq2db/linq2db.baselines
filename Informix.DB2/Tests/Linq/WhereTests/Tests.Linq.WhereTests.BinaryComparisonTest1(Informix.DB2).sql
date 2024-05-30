BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t1
			WHERE
				't'::BOOLEAN = CASE
					WHEN t1.MiddleName <> t1.LastName OR t1.MiddleName IS NULL
						THEN 't'
					ELSE 'f'
				END::BOOLEAN
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

