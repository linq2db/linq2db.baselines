﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id",
	t1."Association"
FROM
	"Issue4723Table1" x
		LEFT JOIN LATERAL (
			SELECT
				"a_Association"."Value" as "Association"
			FROM
				"Issue4723Table2" "a_Association"
			WHERE
				"a_Association"."Id" = x."Id"
			LIMIT 1
		) t1 ON 1=1
WHERE
	t1."Association" IS NOT NULL AND t1."Association" <> 'unknown'

