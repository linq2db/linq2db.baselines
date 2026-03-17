-- PostgreSQL.13 PostgreSQL

SELECT
	t."Id" / 3,
	ARRAY_AGG(v.value) OVER(PARTITION BY (t."Id" / 3), (t."Id" / 2)),
	ARRAY_AGG(v.value) OVER(PARTITION BY (t."Id" / 3), (t."Id" / 2)),
	ARRAY_AGG(ALL v.value) OVER(PARTITION BY (t."Id" / 3)),
	ARRAY_AGG(v.value) FILTER (WHERE (v.value LIKE 'V0%' ESCAPE '~')) OVER(PARTITION BY (t."Id" / 3)),
	ARRAY_AGG(ALL v.value) FILTER (WHERE (v.value LIKE 'V0%' ESCAPE '~')) OVER(PARTITION BY (t."Id" / 3)),
	ARRAY_AGG(ALL v.value) FILTER (WHERE (v.value LIKE 'V0%' ESCAPE '~')) OVER(PARTITION BY (t."Id" / 3) ORDER BY t."Id", (t."Id" - 1)),
	ROW_NUMBER() OVER(PARTITION BY (t."Id" / 3) ORDER BY t."Id")
FROM
	"SampleClass" t
		INNER JOIN LATERAL UNNEST(t."StrArray") v(value) ON 1=1

