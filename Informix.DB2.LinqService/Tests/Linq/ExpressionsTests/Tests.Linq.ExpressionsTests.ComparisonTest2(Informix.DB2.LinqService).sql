BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t1
			WHERE
				(
					SELECT
						COUNT(*)
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
						COUNT(*)
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
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM table(set{1})

