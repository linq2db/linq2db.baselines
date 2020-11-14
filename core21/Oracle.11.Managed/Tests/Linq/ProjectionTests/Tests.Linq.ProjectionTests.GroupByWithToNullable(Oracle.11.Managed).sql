BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1000

SELECT
	t1."value_1",
	t1."id",
	t1."y"
FROM
	(
		SELECT
			a_Patient."Diagnosis" as "value_1",
			a_Patient."PersonID" as "id",
			Round(AVG(selectParam."PersonID"), 27) as "y"
		FROM
			"Person" selectParam
				LEFT JOIN "Patient" a_Patient ON selectParam."PersonID" = a_Patient."PersonID"
		GROUP BY
			selectParam."PersonID",
			a_Patient."PersonID",
			a_Patient."Diagnosis"
		HAVING
			selectParam."PersonID" = 1
		ORDER BY
			a_Patient."Diagnosis" DESC
	) t1
WHERE
	ROWNUM <= :take

