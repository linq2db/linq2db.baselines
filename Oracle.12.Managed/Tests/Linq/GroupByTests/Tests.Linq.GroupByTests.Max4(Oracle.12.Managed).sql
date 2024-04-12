BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2020-02-29 00:00:00.000000'

SELECT
	t1_1."MoneyValue"
FROM
	"LinqDataTypes" t1_1
		INNER JOIN (
			SELECT
				t2.ID,
				MAX(t2."DateTimeValue") as "DateTimeValue"
			FROM
				"LinqDataTypes" t2
			WHERE
				t2.ID = 1 AND t2."DateTimeValue" <= :Date_1
			GROUP BY
				t2.ID
		) t1 ON t1_1.ID = t1.ID AND t1_1."DateTimeValue" = t1."DateTimeValue"

