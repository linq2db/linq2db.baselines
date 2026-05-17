-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	MAX(t1."PersonID")
FROM
	"Person" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "Person" "Target"
USING (
	SELECT
		p."PersonID" + 50 as "ID",
		p."FirstName",
		p."LastName",
		p."MiddleName",
		p."Gender"
	FROM
		"Person" p
) "Source"
(
	"ID",
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
ON ("Target"."PersonID" + 50 = "Source"."ID" AND "Target"."FirstName" <> 'first 3')

WHEN NOT MATCHED AND "Source"."FirstName" = 'first 3' THEN
INSERT
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	"Source"."FirstName",
	"Source"."LastName",
	"Source"."MiddleName",
	"Source"."Gender"
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"

