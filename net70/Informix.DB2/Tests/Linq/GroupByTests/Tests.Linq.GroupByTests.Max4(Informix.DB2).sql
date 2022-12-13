﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @Date_1 Timestamp(16) -- DateTime
SET     @Date_1 = TO_DATE('2020-02-29', '%Y-%m-%d')

SELECT
	t1_1.MoneyValue
FROM
	LinqDataTypes t1_1
		INNER JOIN (
			SELECT
				t2.ID,
				t2.DateTimeValue
			FROM
				(
					SELECT
						sub.ID,
						Max(sub.DateTimeValue) as DateTimeValue
					FROM
						LinqDataTypes sub
					WHERE
						sub.ID = 1 AND sub.DateTimeValue <= @Date_1
					GROUP BY
						sub.ID
				) t2
		) t1 ON t1_1.ID = t1.ID AND t1_1.DateTimeValue = t1.DateTimeValue

