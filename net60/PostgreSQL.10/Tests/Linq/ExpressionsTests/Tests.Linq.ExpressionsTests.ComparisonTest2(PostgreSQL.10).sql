BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 2

SELECT
	CASE
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
								"Patient" t1
							WHERE
								t1."PersonID" IS NULL AND NOT EXISTS(
									SELECT
										*
									FROM
										"Patient" t2
									WHERE
										t2."PersonID" = :personId_1 AND t2."PersonID" = t1."PersonID"
								)
						) as cnt,
						(
							SELECT
								Count(*)
							FROM
								"Patient" t3
							WHERE
								t3."PersonID" = :personId_1 AND NOT EXISTS(
									SELECT
										*
									FROM
										"Patient" t4
									WHERE
										t4."PersonID" IS NULL AND t4."PersonID" = t3."PersonID"
								)
						) as ex,
						t5."FirstName",
						t5."PersonID",
						t5."LastName",
						t5."MiddleName",
						t5."Gender"
					FROM
						"Person" t5
				) t6
			WHERE
				t6.cnt = 0 AND t6.ex = 0
		)
			THEN True
		ELSE False
	END

