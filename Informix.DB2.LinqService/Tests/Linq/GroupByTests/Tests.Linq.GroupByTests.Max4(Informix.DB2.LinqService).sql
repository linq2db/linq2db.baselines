﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @Date Timestamp(16) -- DateTime
SET     @Date = TO_DATE('2020-02-29', '%Y-%m-%d')

SELECT
	t1_1.MoneyValue
FROM
	LinqDataTypes t1_1
		INNER JOIN (
			SELECT
				t2.ID,
				MAX(t2.DateTimeValue) as DateTimeValue
			FROM
				LinqDataTypes t2
			WHERE
				t2.ID = 1 AND t2.DateTimeValue <= @Date
			GROUP BY
				t2.ID
		) t1 ON t1_1.ID = t1.ID AND t1_1.DateTimeValue = t1.DateTimeValue

