BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.Key_1,
	Count(*)
FROM
	(
		SELECT
			Trunc(selectParam.DateTimeValue, 'DD') as Key_1
		FROM
			LinqDataTypes selectParam
				INNER JOIN Parent p ON selectParam.ID = p.ParentID
	) t1
GROUP BY
	t1.Key_1

