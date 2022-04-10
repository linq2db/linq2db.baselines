BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Int"            Int  NOT NULL,
	"NullableInt"    Int      NULL,
	"String"         text     NULL,
	"NullableString" text     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(2,2,'abc','abc'),
(3,NULL,'def',NULL)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."Int" IS DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."Int" IS NOT DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS NOT DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

