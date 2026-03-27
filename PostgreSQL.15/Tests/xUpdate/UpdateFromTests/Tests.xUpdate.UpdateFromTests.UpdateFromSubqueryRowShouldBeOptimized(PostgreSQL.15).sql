-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

-- PostgreSQL.15 PostgreSQL

UPDATE
	"UpdateSubquerySourceTable"
SET
	("FirstName", "LastName") = (
		SELECT
			CASE
				WHEN "canChange"."Id" IS NOT NULL THEN "canChange"."FirstName"
				ELSE "UpdateSubquerySourceTable"."FirstName"
			END,
			CASE
				WHEN "canChange"."Id" IS NOT NULL THEN "canChange"."LastName"
				ELSE "UpdateSubquerySourceTable"."LastName"
			END
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN "UpdateSubquerySourceTable" "canChange" ON "canChange"."Id" = "UpdateSubquerySourceTable"."Id" + 1
	)
WHERE
	"UpdateSubquerySourceTable"."Id" = 1

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"UpdateSubquerySourceTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

