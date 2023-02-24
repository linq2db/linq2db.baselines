BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Int"            Int  NOT NULL,
	"NullableInt"    Int      NULL,
	"String"         text     NULL,
	"NullableString" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL
DECLARE @value_1 Text(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."String" IS DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value_1 Text(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value_1 Text(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value_1 Text(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

