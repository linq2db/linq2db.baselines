﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Int"            Int  NOT NULL,
	"NullableInt"    Int      NULL,
	"String"         text     NULL,
	"NullableString" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2
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
	:Int_1,
	:NullableInt,
	:String,
	:NullableString
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 3
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
	:Int_1,
	:NullableInt,
	:String,
	:NullableString
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value_1 Text(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."String" IS DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value_1 Text(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value_1 Text(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value_1 Text(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT DISTINCT FROM :value_1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

