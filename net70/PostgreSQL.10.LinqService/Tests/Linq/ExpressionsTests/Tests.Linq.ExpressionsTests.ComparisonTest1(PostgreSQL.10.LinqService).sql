BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @personId Integer -- Int32
SET     @personId = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" t1
			WHERE
				(
					SELECT
						COUNT(t2."PersonID")
					FROM
						"Patient" t2
					WHERE
						t2."PersonID" IS NULL AND t2."PersonID" NOT IN (
							SELECT
								t3."PersonID"
							FROM
								"Patient" t3
							WHERE
								t3."PersonID" = :personId
						)
				) = 0 AND
				(
					SELECT
						COUNT(t4."PersonID")
					FROM
						"Patient" t4
					WHERE
						t4."PersonID" = :personId AND t4."PersonID" NOT IN (
							SELECT
								t5."PersonID"
							FROM
								"Patient" t5
							WHERE
								t5."PersonID" IS NULL
						)
				) = 0
		)
			THEN True
		ELSE False
	END

