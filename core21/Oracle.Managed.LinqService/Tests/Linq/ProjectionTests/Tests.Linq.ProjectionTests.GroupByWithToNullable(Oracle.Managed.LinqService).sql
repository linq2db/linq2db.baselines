BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1000

SELECT
	a_Patient.Diagnosis,
	a_Patient.PersonID,
	Round(AVG(selectParam.PersonID), 27)
FROM
	Person selectParam
		LEFT JOIN Patient a_Patient ON selectParam.PersonID = a_Patient.PersonID
GROUP BY
	selectParam.PersonID,
	a_Patient.PersonID,
	a_Patient.Diagnosis
HAVING
	selectParam.PersonID = 1
ORDER BY
	a_Patient.Diagnosis DESC
FETCH NEXT :take ROWS ONLY

