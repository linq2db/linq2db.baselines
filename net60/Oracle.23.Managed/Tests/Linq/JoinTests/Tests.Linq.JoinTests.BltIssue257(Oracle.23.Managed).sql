BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Date_1",
	Count(*)
FROM
	(
		SELECT
			Trunc(selectParam."DateTimeValue", 'DD') as "Date_1"
		FROM
			"LinqDataTypes" selectParam
				INNER JOIN "Parent" p ON selectParam.ID = p."ParentID"
	) t1
GROUP BY
	t1."Date_1"

