BeforeExecute
--  Oracle.11.Managed Oracle11

DROP SEQUENCE "PersonSeq"

BeforeExecute
--  Oracle.11.Managed Oracle11

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1
ORDER BY
	t1."PersonID"

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	t1."PersonID",
	t1."Taxonomy"
FROM
	"Doctor" t1
ORDER BY
	t1."PersonID"

BeforeExecute
--  Oracle.11.Managed Oracle11

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
