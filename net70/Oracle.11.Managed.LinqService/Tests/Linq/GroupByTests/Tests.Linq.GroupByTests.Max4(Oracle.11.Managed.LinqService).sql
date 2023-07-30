﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2020-02-29 00:00:00.000000'

SELECT
	t1_1."MoneyValue"
FROM
	"LinqDataTypes" t1_1
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
		) t1 ON t1_1.ID = t1.ID AND t1_1."DateTimeValue" = t1."DateTimeValue"

