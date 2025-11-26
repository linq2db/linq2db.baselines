-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1000

SELECT
	a_Patient."Diagnosis",
	a_Patient."PersonID",
	AVG(auto16031."PersonID") as "Average"
FROM
	"Person" auto16031
		LEFT JOIN "Patient" a_Patient ON auto16031."PersonID" = a_Patient."PersonID"
GROUP BY
	auto16031."PersonID",
	a_Patient."PersonID",
	a_Patient."Diagnosis"
HAVING
	auto16031."PersonID" = 1
ORDER BY
	a_Patient."Diagnosis" DESC
FETCH NEXT :take ROWS ONLY

