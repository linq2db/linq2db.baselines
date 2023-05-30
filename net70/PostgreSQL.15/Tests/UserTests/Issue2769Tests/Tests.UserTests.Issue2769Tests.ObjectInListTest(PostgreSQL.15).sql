BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"        Int NOT NULL,
	"NullValue" Int     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @_default Integer -- Int32
SET     @_default = 0

SELECT
	a."Id",
	a."NullValue"
FROM
	"SampleClass" a
WHERE
	(a."Id" = 0 AND Coalesce(a."NullValue", :_default) = 0 OR a."Id" = 1 AND Coalesce(a."NullValue", :_default) = 1 OR a."Id" = 2 AND Coalesce(a."NullValue", :_default) = 2)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

