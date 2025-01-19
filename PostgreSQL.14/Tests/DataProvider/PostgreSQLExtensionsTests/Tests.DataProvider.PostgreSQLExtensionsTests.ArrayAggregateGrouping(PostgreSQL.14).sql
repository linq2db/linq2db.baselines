﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	g_2."Key_1",
	ARRAY_AGG(ALL g_2.v ORDER BY g_2."Id"),
	ARRAY_AGG(g_2.v ORDER BY g_2."Id" DESC, g_2.v),
	ARRAY_AGG(g_2.v)
FROM
	(
		SELECT
			g_1."Id" / 3 as "Key_1",
			g_1."Id",
			v as v
		FROM
			"SampleClass" g_1
				INNER JOIN LATERAL UNNEST(g_1."StrArray") v ON 1=1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	ARRAY_AGG(v)
FROM
	"SampleClass" t1
		INNER JOIN LATERAL UNNEST(t1."StrArray") v ON 1=1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	ARRAY_AGG(DISTINCT v)
FROM
	"SampleClass" t1
		INNER JOIN LATERAL UNNEST(t1."StrArray") v ON 1=1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	ARRAY_AGG(v ORDER BY v)
FROM
	"SampleClass" t1
		INNER JOIN LATERAL UNNEST(t1."StrArray") v ON 1=1

