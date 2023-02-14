BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT
						(
							SELECT
								Count(*)
							FROM
								Patient t1
							WHERE
								t1.PersonID IS NULL AND t1.PersonID NOT IN (
									SELECT
										t2.PersonID
									FROM
										Patient t2
									WHERE
										t2.PersonID = 2
								)
						) as cnt,
						(
							SELECT
								Count(*)
							FROM
								Patient t3
							WHERE
								t3.PersonID = 2 AND t3.PersonID NOT IN (
									SELECT
										t4.PersonID
									FROM
										Patient t4
									WHERE
										t4.PersonID IS NULL
								)
						) as ex,
						t5.FirstName,
						t5.PersonID,
						t5.LastName,
						t5.MiddleName,
						t5.Gender
					FROM
						Person t5
				) t6
			WHERE
				t6.cnt = 0 AND t6.ex = 0
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

