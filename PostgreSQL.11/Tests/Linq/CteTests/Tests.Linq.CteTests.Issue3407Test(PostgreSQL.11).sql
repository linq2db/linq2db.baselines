﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

WITH "CTE_1"
(
	"ID",
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender",
	"Patient_PersonID",
	"Patient_Diagnosis"
)
AS
(
	SELECT
		t1."PersonID",
		t1."FirstName",
		t1."LastName",
		t1."MiddleName",
		t1."Gender",
		"a_Patient"."PersonID",
		"a_Patient"."Diagnosis"
	FROM
		"Person" t1
			LEFT JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
)
SELECT
	r."FirstName",
	r."ID",
	r."LastName",
	r."MiddleName",
	r."Gender",
	r."Patient_PersonID",
	r."Patient_Diagnosis"
FROM
	"CTE_1" r
WHERE
	r."ID" = 2

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

WITH "CTE_1" ("ID")
AS
(
	SELECT
		t1."PersonID"
	FROM
		"Person" t1
)
SELECT
	COUNT(*)
FROM
	"CTE_1" t2

