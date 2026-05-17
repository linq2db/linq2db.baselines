-- Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent p
	)
FROM table(set{1})

