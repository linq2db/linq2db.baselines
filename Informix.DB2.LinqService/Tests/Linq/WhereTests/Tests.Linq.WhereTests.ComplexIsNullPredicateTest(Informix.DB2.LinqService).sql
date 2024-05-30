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
				CASE
					WHEN t1.MiddleName = '123' THEN 't'
					ELSE 'f'
				END::BOOLEAN = CASE
					WHEN t1.MiddleName = '1' OR t1.MiddleName = 'test' AND (t1.MiddleName <> '1' OR t1.MiddleName IS NULL)
						THEN 't'
					ELSE 'f'
				END::BOOLEAN
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

