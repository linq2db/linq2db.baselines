BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Max(t1."PersonID")
FROM
	"Person" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

MERGE INTO "Person" "Target"
USING (
	SELECT
		p."PersonID" + 50 as source_field0,
		p."FirstName",
		p."LastName",
		p."MiddleName",
		p."Gender"
	FROM
		"Person" p
) "Source"
(
	source_field0,
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
ON ("Target"."PersonID" + 50 = "Source".source_field0 AND
"Target"."FirstName" <> 'first 3')

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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

BeforeExecute
DisposeTransaction
