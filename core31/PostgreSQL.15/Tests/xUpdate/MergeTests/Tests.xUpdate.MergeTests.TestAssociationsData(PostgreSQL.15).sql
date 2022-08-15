﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1
ORDER BY
	t1."PersonID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."PersonID",
	t1."Taxonomy"
FROM
	"Doctor" t1
ORDER BY
	t1."PersonID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
RollbackTransaction
