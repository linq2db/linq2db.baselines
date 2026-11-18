-- Informix.DB2 Informix
SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			Parent p
		WHERE
			p.Value1 IS NOT NULL AND p.Value1 <= 0
	)
FROM table(set{1})

