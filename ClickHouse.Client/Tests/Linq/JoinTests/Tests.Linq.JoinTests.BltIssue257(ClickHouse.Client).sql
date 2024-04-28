﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	b_1.Date_1,
	COUNT(*)
FROM
	(
		SELECT
			toDate32(b.DateTimeValue) as c1,
			toDate(b.DateTimeValue) as Date_1
		FROM
			LinqDataTypes b
				INNER JOIN Parent p ON b.ID = p.ParentID
	) b_1
GROUP BY
	b_1.c1,
	b_1.Date_1

