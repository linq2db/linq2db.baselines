BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."PersonID",
	a_Doctor."PersonID",
	a_Doctor."Taxonomy"
FROM
	"Person" t1
		LEFT JOIN "Doctor" a_Doctor ON t1."PersonID" = a_Doctor."PersonID"
WHERE
	Length(a_Doctor."Taxonomy") >= 0 AND Length(a_Doctor."Taxonomy") IS NOT NULL OR
	a_Doctor."Taxonomy" IS NULL

