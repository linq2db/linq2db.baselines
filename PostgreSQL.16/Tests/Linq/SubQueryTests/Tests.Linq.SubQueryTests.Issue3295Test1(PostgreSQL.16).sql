BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x_1."Id",
	x_1."StatusName"
FROM
	(
		SELECT
			CASE
				WHEN t1."PersonID" IS NOT NULL THEN t1."Diagnosis"
				ELSE 'abc'
			END as "StatusName",
			CASE
				WHEN t1."PersonID" IS NOT NULL THEN t1."PersonID_1"
				ELSE x."PersonID"
			END as "Id"
		FROM
			"Person" x
				LEFT JOIN LATERAL (
					SELECT
						y."PersonID",
						y."Diagnosis",
						y."PersonID" as "PersonID_1"
					FROM
						"Patient" y
					WHERE
						y."PersonID" = x."PersonID"
					LIMIT 1
				) t1 ON 1=1
	) x_1
WHERE
	x_1."StatusName" = 'abc'

