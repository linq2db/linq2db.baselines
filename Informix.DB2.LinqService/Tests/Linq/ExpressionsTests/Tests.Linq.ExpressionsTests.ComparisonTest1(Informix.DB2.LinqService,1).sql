BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t7
					CROSS JOIN (
						SELECT
							COUNT(t1.PersonID) as c1
						FROM
							Patient t1
						WHERE
							t1.PersonID = 0 AND NOT EXISTS(
								SELECT
									*
								FROM
									Patient t2
								WHERE
									t2.PersonID = 2 AND t1.PersonID = t2.PersonID
							)
					) t3
					CROSS JOIN (
						SELECT
							COUNT(t4.PersonID) as c1
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
					) t6
			WHERE
				t3.c1 = 0 AND t6.c1 = 0
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

