-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id",
	(
		SELECT
			e.idx::text || ' - ' || Coalesce(e.value, '')
		FROM
			UNNEST(t."StrArray") WITH ORDINALITY e(value, idx)
		LIMIT 1 OFFSET 1 
	)
FROM
	"SampleClass" t

