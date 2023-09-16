﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Int"            Int  NOT NULL,
	"NullableInt"    Int      NULL,
	"String"         text     NULL,
	"NullableString" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."String" IS DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @value Text(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT DISTINCT FROM :value

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Src"

