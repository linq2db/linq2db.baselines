-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

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

