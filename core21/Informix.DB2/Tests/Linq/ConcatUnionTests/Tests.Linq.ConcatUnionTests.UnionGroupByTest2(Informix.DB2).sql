﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t4.year_1,
	t4.year_2,
	t4.int_1
FROM
	(
		SELECT
			t1.SmallIntValue as year_1,
			t1.SmallIntValue as year_2,
			3 as int_1
		FROM
			LinqDataTypes t1
		UNION
		SELECT
			t3.month_1 as year_1,
			t3.year_1 as year_2,
			t3.int_1
		FROM
			(
				SELECT
					t2.month_1,
					t2.year_1,
					1 as int_1
				FROM
					(
						SELECT
							Month(selectParam.DateTimeValue) as month_1,
							Year(selectParam.DateTimeValue) as year_1
						FROM
							LinqDataTypes selectParam
					) t2
				GROUP BY
					t2.month_1,
					t2.year_1
			) t3
	) t4
UNION
SELECT
	Year(t5.DateTimeValue),
	Year(t5.DateTimeValue),
	2
FROM
	LinqDataTypes t5

