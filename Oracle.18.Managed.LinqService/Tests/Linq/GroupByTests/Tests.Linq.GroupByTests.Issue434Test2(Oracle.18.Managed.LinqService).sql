BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	m_1."PersonID",
	d."PersonID",
	d."Diagnosis"
FROM
	"Person" m_1
		INNER JOIN "Patient" d ON m_1."PersonID" = d."PersonID"
WHERE
	Lower(m_1."FirstName") LIKE '%test%' ESCAPE '~'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."FirstName",
	p."PersonID"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE '%test%' ESCAPE '~'

