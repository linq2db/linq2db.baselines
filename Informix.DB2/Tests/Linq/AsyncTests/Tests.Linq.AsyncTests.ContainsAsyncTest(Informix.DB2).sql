BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t1
			WHERE
				1 = t1.PersonID
		)
			THEN 't'
		ELSE 'f'
	END
FROM table(set{1})

