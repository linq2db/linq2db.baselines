BeforeExecute
--  Informix.DB2 Informix (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
		WHERE
			1 = t1.PersonID
	)
FROM table(set{1})

