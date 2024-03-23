BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Int"            Int  NOT NULL,
	"NullableInt"    Int      NULL,
	"String"         text     NULL,
	"NullableString" text     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = 2
DECLARE @String Text(3) -- String
SET     @String = 'abc'
DECLARE @NullableString Text(3) -- String
SET     @NullableString = 'abc'

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	:Int,
	:NullableInt,
	:String,
	:NullableString
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Int Integer -- Int32
SET     @Int = 3
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = NULL
DECLARE @String Text(3) -- String
SET     @String = 'def'
DECLARE @NullableString Text -- String
SET     @NullableString = NULL

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	:Int,
	:NullableInt,
	:String,
	:NullableString
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	NULLIF(s."String", 'abc')
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	NULLIF(s."String", 'xyz')
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	NULLIF(s."String", NULL)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	NULLIF(s."NullableString", 'abc')
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	NULLIF(s."NullableString", 'xyz')
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	NULLIF(s."NullableString", NULL)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

