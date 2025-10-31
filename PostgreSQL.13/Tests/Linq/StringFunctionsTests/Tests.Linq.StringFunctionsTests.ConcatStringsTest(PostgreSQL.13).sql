-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value2")
FROM
	"SampleClass" t

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value3")
FROM
	"SampleClass" t

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value3", t."Value1", t."Value2")
FROM
	"SampleClass" t

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value3", t."Value3")
FROM
	"SampleClass" t

