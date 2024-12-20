﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	MAX(t1."PersonID")
FROM
	"Person" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "Person" "Target"
USING (
	SELECT
		p."PersonID" + 50 as "source_ID",
		p."FirstName" as "source_FirstName",
		p."LastName" as "source_LastName",
		p."MiddleName" as "source_MiddleName",
		p."Gender" as "source_Gender"
	FROM
		"Person" p
) "Source"
(
	"source_ID",
	"source_FirstName",
	"source_LastName",
	"source_MiddleName",
	"source_Gender"
)
ON ("Target"."PersonID" + 50 = "Source"."source_ID" AND
"Target"."FirstName" <> 'first 3')

WHEN NOT MATCHED AND "Source"."source_FirstName" = 'first 3' THEN
INSERT
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	"Source"."source_FirstName",
	"Source"."source_LastName",
	"Source"."source_MiddleName",
	"Source"."source_Gender"
)

BeforeExecute
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

BeforeExecute
DisposeTransaction
