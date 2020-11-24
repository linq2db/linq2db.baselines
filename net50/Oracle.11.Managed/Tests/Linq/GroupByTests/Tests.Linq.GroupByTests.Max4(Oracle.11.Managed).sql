BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TO_TIMESTAMP('2020-02-29 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6')

SELECT
	t1."MoneyValue"
FROM
	"LinqDataTypes" t1
		INNER JOIN (
			SELECT
				sub.ID,
				Max(sub."DateTimeValue") as "DateTimeValue"
			FROM
				"LinqDataTypes" sub
			WHERE
				sub.ID = 1 AND sub."DateTimeValue" <= :Date_1
			GROUP BY
				sub.ID
		) t2 ON t1.ID = t2.ID AND t1."DateTimeValue" = t2."DateTimeValue"

