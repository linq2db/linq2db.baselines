﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Key_1
FROM
	(
		SELECT
			YEAR(selectParam.DateTimeValue) as Key_1
		FROM
			LinqDataTypes selectParam
	) t1
GROUP BY
	t1.Key_1

