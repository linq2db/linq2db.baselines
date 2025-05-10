BeforeExecute
-- Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
		WHERE
			't'::BOOLEAN = CASE
				WHEN t1.MiddleName <> t1.LastName OR t1.MiddleName IS NULL
					THEN 't'::BOOLEAN
				WHEN t1.MiddleName = t1.LastName AND t1.MiddleName IS NOT NULL
					THEN 'f'::BOOLEAN
				ELSE NULL
			END
	)
FROM table(set{1})

