BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1000

SELECT
	t1."Key_3" as "value",
	t1."Key_2" as "id",
	Round(AVG(t1."Key_1"), 27) as "y"
FROM
	(
		SELECT
			selectParam."PersonID" as "Key_1",
			a_Patient."PersonID" as "Key_2",
			a_Patient."Diagnosis" as "Key_3"
		FROM
			"Person" selectParam
				LEFT JOIN "Patient" a_Patient ON selectParam."PersonID" = a_Patient."PersonID"
	) t1
GROUP BY
	t1."Key_1",
	t1."Key_2",
	t1."Key_3"
HAVING
	t1."Key_1" = 1
ORDER BY
	t1."Key_3" DESC
FETCH NEXT :take ROWS ONLY

