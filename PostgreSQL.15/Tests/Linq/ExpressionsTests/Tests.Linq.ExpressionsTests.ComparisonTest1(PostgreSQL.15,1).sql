BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @personId Integer -- Int32
SET     @personId = 0
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 2

SELECT
	EXISTS(
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
					t2."PersonID" = :personId AND t2."PersonID" NOT IN (
						SELECT
							t3."PersonID"
						FROM
							"Patient" t3
						WHERE
							t3."PersonID" = :personId_1
					)
			) = 0 AND
			(
				SELECT
					COUNT(t4."PersonID")
				FROM
					"Patient" t4
				WHERE
					t4."PersonID" = :personId_1 AND t4."PersonID" NOT IN (
						SELECT
							t5."PersonID"
						FROM
							"Patient" t5
						WHERE
							t5."PersonID" = :personId
					)
			) = 0
	)

