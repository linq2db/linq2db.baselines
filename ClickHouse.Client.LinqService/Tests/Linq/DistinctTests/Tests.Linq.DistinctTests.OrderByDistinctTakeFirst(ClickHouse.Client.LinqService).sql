﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t3.F2
FROM
	(
		SELECT DISTINCT
			t2.F1 as F1,
			t2.F2 as F2
		FROM
			(
				SELECT
					t1.F1 as F1,
					t1.F2 as F2
				FROM
					DistinctOrderByTable t1
				ORDER BY
					t1.F3 DESC
				LIMIT 5
			) t2
	) t3

