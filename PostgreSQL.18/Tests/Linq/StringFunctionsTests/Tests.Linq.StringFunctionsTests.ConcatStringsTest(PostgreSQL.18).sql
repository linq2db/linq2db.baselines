-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value3",
	t1."Value4"
FROM
	"SampleClass" t1
ORDER BY
	t1."Id"

-- PostgreSQL.18 PostgreSQL

SELECT
	Coalesce(t."Value2", '')
FROM
	"SampleClass" t
ORDER BY
	t."Id"

-- PostgreSQL.18 PostgreSQL

SELECT
	Coalesce(t."Value3", '')
FROM
	"SampleClass" t
ORDER BY
	t."Id"

-- PostgreSQL.18 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value3", t."Value1", t."Value2")
FROM
	"SampleClass" t
ORDER BY
	t."Id"

-- PostgreSQL.18 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value3", t."Value3")
FROM
	"SampleClass" t
ORDER BY
	t."Id"

