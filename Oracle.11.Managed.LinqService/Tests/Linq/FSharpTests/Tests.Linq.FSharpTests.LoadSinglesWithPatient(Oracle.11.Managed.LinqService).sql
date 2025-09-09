BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	p."MiddleName",
	p."Gender",
	a_Patient."PersonID",
	a_Patient."Diagnosis"
FROM
	"Person" p
		LEFT JOIN "Patient" a_Patient ON p."PersonID" = a_Patient."PersonID"
WHERE
	p."PersonID" = 1 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	p."MiddleName",
	p."Gender",
	a_Patient."PersonID",
	a_Patient."Diagnosis"
FROM
	"Person" p
		LEFT JOIN "Patient" a_Patient ON p."PersonID" = a_Patient."PersonID"
WHERE
	p."PersonID" = 2 AND ROWNUM <= 2

