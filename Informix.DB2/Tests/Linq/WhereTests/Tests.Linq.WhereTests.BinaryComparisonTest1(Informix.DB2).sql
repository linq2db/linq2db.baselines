-- Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
		WHERE
			t1.MiddleName <> t1.LastName OR t1.MiddleName IS NULL
	)
FROM table(set{1})

