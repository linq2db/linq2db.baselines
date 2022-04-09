BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child t1
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

