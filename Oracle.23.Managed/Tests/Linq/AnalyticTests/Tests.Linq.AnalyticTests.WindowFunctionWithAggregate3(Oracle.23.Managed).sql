﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 100

SELECT
	t1."key_1",
	t1.COUNT_1,
	t1."window_1"
FROM
	(
		SELECT
			g_1."ParentID" as "key_1",
			COUNT(*) as COUNT_1,
			COUNT(*) OVER() as "window_1"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) t1
ORDER BY
	t1."key_1" DESC
FETCH NEXT :take ROWS ONLY

