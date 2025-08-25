BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	b_1."Date_1",
	COUNT(*)
FROM
	(
		SELECT
			TRUNC(b."DateTimeValue") as "Date_1"
		FROM
			"LinqDataTypes" b
				INNER JOIN "Parent" p ON b.ID = p."ParentID"
	) b_1
GROUP BY
	b_1."Date_1"

