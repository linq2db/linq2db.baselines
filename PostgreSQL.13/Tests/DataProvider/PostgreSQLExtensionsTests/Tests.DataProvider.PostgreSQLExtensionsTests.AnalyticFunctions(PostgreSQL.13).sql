BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id" / 3,
	ARRAY_AGG(v) OVER(PARTITION BY (t."Id" / 3), (t."Id" / 2)),
	ARRAY_AGG(v) OVER(PARTITION BY (t."Id" / 3), (t."Id" / 2)),
	ARRAY_AGG(ALL v) OVER(PARTITION BY (t."Id" / 3)),
	ARRAY_AGG(v) FILTER (WHERE (v LIKE 'V0%' ESCAPE '~')) OVER(PARTITION BY (t."Id" / 3)),
	ARRAY_AGG(ALL v) FILTER (WHERE (v LIKE 'V0%' ESCAPE '~')) OVER(PARTITION BY (t."Id" / 3)),
	ARRAY_AGG(ALL v) FILTER (WHERE (v LIKE 'V0%' ESCAPE '~')) OVER(PARTITION BY (t."Id" / 3) ORDER BY t."Id", (t."Id" - 1)),
	ROW_NUMBER() OVER(PARTITION BY (t."Id" / 3) ORDER BY t."Id")
FROM
	"SampleClass" t
		INNER JOIN LATERAL UNNEST(t."StrArray") v ON 1=1

