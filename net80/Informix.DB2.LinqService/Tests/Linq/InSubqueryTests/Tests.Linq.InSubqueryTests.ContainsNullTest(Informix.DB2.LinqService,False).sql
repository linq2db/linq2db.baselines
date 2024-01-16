BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent c_1
			WHERE
				c_1.Value1 IS NULL
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

