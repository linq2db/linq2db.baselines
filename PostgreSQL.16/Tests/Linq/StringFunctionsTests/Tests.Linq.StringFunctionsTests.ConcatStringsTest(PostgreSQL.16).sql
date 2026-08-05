-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Coalesce(t."Value2", '')
FROM
	"SampleClass" t
ORDER BY
	t."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Coalesce(t."Value3", '')
FROM
	"SampleClass" t
ORDER BY
	t."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CONCAT_WS(' -> ', t."Value3", t."Value1", t."Value2")
FROM
	"SampleClass" t
ORDER BY
	t."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CONCAT_WS(' -> ', t."Value3", t."Value3")
FROM
	"SampleClass" t
ORDER BY
	t."Id"

