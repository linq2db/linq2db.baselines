BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID,
	t1."FirstName",
	t1."LastName",
	t1."MiddleName",
	t1."Gender",
	t1."PersonID",
	t1."PersonID",
	t1."Diagnosis"
FROM
	(
		SELECT
			p."PersonID" as ID,
			p."FirstName",
			p."LastName",
			p."MiddleName",
			p."Gender",
			a_Patient."PersonID",
			a_Patient."Diagnosis"
		FROM
			"Person" p
				LEFT JOIN "Patient" a_Patient ON p."PersonID" = a_Patient."PersonID"
		FETCH NEXT :take ROWS ONLY
	) t1
UNION ALL
SELECT
	t2."PersonID",
	t2."FirstName",
	t2."LastName",
	t2."MiddleName",
	t2."Gender",
	a_Patient_1."PersonID",
	a_Patient_1."PersonID",
	a_Patient_1."Diagnosis"
FROM
	"Person" t2
		LEFT JOIN "Patient" a_Patient_1 ON t2."PersonID" = a_Patient_1."PersonID"

