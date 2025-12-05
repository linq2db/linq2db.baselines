-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."PersonID",
	a_Doctor."PersonID",
	a_Doctor."Taxonomy"
FROM
	"Person" t1
		LEFT JOIN "Doctor" a_Doctor ON t1."PersonID" = a_Doctor."PersonID"
WHERE
	Length(a_Doctor."Taxonomy") >= 0 OR a_Doctor."Taxonomy" IS NULL

