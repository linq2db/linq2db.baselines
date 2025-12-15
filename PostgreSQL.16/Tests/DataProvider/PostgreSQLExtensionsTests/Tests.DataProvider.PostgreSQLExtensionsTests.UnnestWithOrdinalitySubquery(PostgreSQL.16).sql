-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	(
		SELECT
			e.idx || ' - ' || e.value
		FROM
			UNNEST(t."StrArray") WITH ORDINALITY e(value, idx)
		LIMIT 1 OFFSET 1 
	)
FROM
	"SampleClass" t

