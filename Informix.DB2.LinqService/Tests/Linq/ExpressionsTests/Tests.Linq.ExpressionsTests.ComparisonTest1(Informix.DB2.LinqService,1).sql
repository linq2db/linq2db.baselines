BeforeExecute
-- Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
		WHERE
			(
				SELECT
					COUNT(t2.PersonID)
				FROM
					Patient t2
				WHERE
					t2.PersonID = 0 AND NOT EXISTS(
						SELECT
							*
						FROM
							Patient t3
						WHERE
							t3.PersonID = 2 AND t2.PersonID = t3.PersonID
					)
			) = 0 AND
			(
				SELECT
					COUNT(t4.PersonID)
				FROM
					Patient t4
				WHERE
					t4.PersonID = 2 AND NOT EXISTS(
						SELECT
							*
						FROM
							Patient t5
						WHERE
							t5.PersonID = 0 AND t4.PersonID = t5.PersonID
					)
			) = 0
	)
FROM table(set{1})

