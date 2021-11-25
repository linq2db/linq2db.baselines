BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Trunc(selectParam."DateTimeValue", 'DD'),
	Count(*)
FROM
	"LinqDataTypes" selectParam
		INNER JOIN "Parent" p ON selectParam.ID = p."ParentID"
GROUP BY
	Trunc(selectParam."DateTimeValue", 'DD')

