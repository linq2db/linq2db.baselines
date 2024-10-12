BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Int"            Int  NOT NULL,
	"NullableInt"    Int      NULL,
	"String"         text     NULL,
	"NullableString" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IS DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IS NOT DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS NOT DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

