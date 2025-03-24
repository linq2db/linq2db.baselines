﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.DetailId,
	t1.MasterId,
	t1.DetailValue
FROM
	DetailClass t1

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id1 as Key_1
		FROM
			MasterManyId g_1
		LIMIT 11
	) g_2
GROUP BY
	g_2.Key_1

