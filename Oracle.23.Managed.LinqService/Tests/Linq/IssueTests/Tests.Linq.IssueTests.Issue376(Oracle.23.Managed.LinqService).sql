BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t2.ID,
	t2."PersonID",
	t2."Taxonomy"
FROM
	(
		SELECT
			Length(a_Doctor."Taxonomy") as "Length_1",
			a_Doctor."Taxonomy",
			t1."PersonID" as ID,
			a_Doctor."PersonID"
		FROM
			"Person" t1
				LEFT JOIN "Doctor" a_Doctor ON t1."PersonID" = a_Doctor."PersonID"
	) t2
WHERE
	(t2."Length_1" >= 0 OR t2."Taxonomy" IS NULL)

