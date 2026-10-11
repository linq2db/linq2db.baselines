-- Informix.DB2 Informix
SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent p
		WHERE
			p.Value1 IS NOT NULL AND p.Value1 > 1
	)
FROM table(set{1})

