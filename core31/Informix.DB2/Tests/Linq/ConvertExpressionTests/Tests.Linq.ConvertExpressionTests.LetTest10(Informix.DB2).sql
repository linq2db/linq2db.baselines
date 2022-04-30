BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

