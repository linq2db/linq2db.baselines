BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1000

SELECT
	t2."Diagnosis" as "value",
	t2."c1",
	Round(AVG(t2."PersonID"), 27) as "y"
FROM
	(
		SELECT
			t1."PersonID",
			a_Patient."PersonID" as "c1",
			a_Patient."Diagnosis"
		FROM
			"Person" t1
				LEFT JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
	) t2
GROUP BY
	t2."PersonID",
	t2."c1",
	t2."Diagnosis"
HAVING
	t2."PersonID" = 1
ORDER BY
	t2."Diagnosis" DESC
FETCH NEXT :take ROWS ONLY

