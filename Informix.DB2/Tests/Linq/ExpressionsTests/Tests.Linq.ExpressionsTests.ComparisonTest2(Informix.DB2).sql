-- Informix.DB2 Informix
DECLARE @personId Integer(4) -- Int32
SET     @personId = 0
DECLARE @personId_1 Integer(4) -- Int32
SET     @personId_1 = 2

SELECT
	EXISTS(
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
					t2.PersonID = @personId AND NOT EXISTS(
						SELECT
							*
						FROM
							Patient t3
						WHERE
							t3.PersonID = @personId_1 AND t2.PersonID = t3.PersonID
					)
			) = 0 AND
			(
				SELECT
					COUNT(*)
				FROM
					Patient t4
				WHERE
					t4.PersonID = @personId_1 AND NOT EXISTS(
						SELECT
							*
						FROM
							Patient t5
						WHERE
							t5.PersonID = @personId AND t4.PersonID = t5.PersonID
					)
			) = 0
	)
FROM table(set{1})

