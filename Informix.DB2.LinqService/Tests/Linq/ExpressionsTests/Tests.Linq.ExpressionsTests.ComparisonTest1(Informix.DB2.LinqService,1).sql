BeforeExecute
-- Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t7
				CROSS JOIN (
					SELECT
						COUNT(t1.PersonID) as cond
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
						COUNT(t4.PersonID) as cond
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
			t3.cond = 0 AND t6.cond = 0
	)
FROM table(set{1})

