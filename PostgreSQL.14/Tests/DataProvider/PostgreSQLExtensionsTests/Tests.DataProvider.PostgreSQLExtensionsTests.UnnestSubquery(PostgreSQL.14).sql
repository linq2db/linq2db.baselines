BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	(
		SELECT
			t1.value
		FROM
			UNNEST(t."StrArray") t1(value)
		LIMIT 1
	)
FROM
	"SampleClass" t

