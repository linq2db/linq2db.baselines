BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	(
		SELECT
			t1
		FROM
			UNNEST(t."StrArray") t1
		LIMIT 1
	)
FROM
	"SampleClass" t

