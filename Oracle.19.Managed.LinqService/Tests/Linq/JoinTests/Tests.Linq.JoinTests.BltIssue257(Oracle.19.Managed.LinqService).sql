BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	b_1."Date_1",
	Count(*)
FROM
	(
		SELECT
			Trunc(b."DateTimeValue", 'DD') as "Date_1"
		FROM
			"LinqDataTypes" b
				INNER JOIN "Parent" p ON b.ID = p."ParentID"
	) b_1
GROUP BY
	b_1."Date_1"

