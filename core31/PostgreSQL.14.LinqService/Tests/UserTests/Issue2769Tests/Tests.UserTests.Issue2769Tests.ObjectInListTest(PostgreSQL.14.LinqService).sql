BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"        Int NOT NULL,
	"NullValue" Int     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @default_1 Integer -- Int32
SET     @default_1 = 0

SELECT
	a."Id",
	a."NullValue"
FROM
	"SampleClass" a
WHERE
	(a."Id" = 0 AND Coalesce(a."NullValue", :default_1) = 0 OR a."Id" = 1 AND Coalesce(a."NullValue", :default_1) = 1 OR a."Id" = 2 AND Coalesce(a."NullValue", :default_1) = 2)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

