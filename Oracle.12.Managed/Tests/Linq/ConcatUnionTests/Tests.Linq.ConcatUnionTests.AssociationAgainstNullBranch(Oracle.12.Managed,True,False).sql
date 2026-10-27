-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."PersonID",
	a_Patient."PersonID",
	a_Patient."PersonID",
	a_Patient."Diagnosis"
FROM
	"Person" p
		LEFT JOIN "Patient" a_Patient ON p."PersonID" = a_Patient."PersonID"
UNION
SELECT
	p_1."PersonID",
	NULL,
	NULL,
	NULL
FROM
	"Person" p_1

