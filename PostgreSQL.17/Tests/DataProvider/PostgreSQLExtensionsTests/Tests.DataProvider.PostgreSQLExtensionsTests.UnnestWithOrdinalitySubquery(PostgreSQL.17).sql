-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	(
		SELECT
			e.idx::text || ' - ' || e.value as "First_1"
		FROM
			UNNEST(t."StrArray") WITH ORDINALITY e(value, idx)
		LIMIT 1 OFFSET 1 
	)
FROM
	"SampleClass" t

