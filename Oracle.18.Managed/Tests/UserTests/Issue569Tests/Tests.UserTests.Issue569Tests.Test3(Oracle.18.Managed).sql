BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	pt."PersonID",
	d."Taxonomy"
FROM
	"Person" p
		CROSS JOIN "Patient" pt
		CROSS JOIN "Doctor" d
ORDER BY
	p."PersonID",
	pt."PersonID",
	d."Taxonomy"

