﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			Date_Trunc('day', CURRENT_TIMESTAMP) as "Key_1"
		FROM
			"Parent" g_1
				INNER JOIN "Child" s ON g_1."ParentID" = s."ParentID"
		WHERE
			g_1."Value1" > 0 AND g_1."Value1" IS NOT NULL
	) g_2
GROUP BY
	g_2."Key_1"
LIMIT :take

