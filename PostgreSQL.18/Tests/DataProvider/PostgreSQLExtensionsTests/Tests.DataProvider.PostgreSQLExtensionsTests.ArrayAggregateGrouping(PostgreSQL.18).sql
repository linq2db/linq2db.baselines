-- PostgreSQL.18 PostgreSQL

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
			v.value as v
		FROM
			"SampleClass" g_1
				INNER JOIN LATERAL UNNEST(g_1."StrArray") v(value) ON 1=1
	) g_2
GROUP BY
	g_2."Key_1"

-- PostgreSQL.18 PostgreSQL

SELECT
	ARRAY_AGG(v.value)
FROM
	"SampleClass" t1
		INNER JOIN LATERAL UNNEST(t1."StrArray") v(value) ON 1=1

-- PostgreSQL.18 PostgreSQL

SELECT
	ARRAY_AGG(DISTINCT v.value)
FROM
	"SampleClass" t1
		INNER JOIN LATERAL UNNEST(t1."StrArray") v(value) ON 1=1

-- PostgreSQL.18 PostgreSQL

SELECT
	ARRAY_AGG(v.value ORDER BY v.value)
FROM
	"SampleClass" t1
		INNER JOIN LATERAL UNNEST(t1."StrArray") v(value) ON 1=1

