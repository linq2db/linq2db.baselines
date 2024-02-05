BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t1
			WHERE
				t1.PersonID = 1
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

