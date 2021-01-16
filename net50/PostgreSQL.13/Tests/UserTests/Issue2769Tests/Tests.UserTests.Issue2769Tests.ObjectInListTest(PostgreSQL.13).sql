BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "SampleClass"
(
	"Id"        Int NOT NULL,
	"NullValue" Int     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	a."Id",
	a."NullValue"
FROM
	"SampleClass" a
WHERE
	(a."Id" = 0 AND Coalesce(a."NullValue", 0) = 0 OR a."Id" = 1 AND Coalesce(a."NullValue", 0) = 1 OR a."Id" = 2 AND Coalesce(a."NullValue", 0) = 2)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE "SampleClass"

