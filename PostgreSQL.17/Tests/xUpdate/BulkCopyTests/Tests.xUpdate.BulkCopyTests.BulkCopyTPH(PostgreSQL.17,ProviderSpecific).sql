BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TPHTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TPHTable"
(
	"Id"            Int        NOT NULL,
	"Discriminator" Int        NOT NULL,
	"Value1"        text           NULL,
	"Value2"        text           NULL,
	"Value3"        text           NULL,
	"NullableBool"  VarChar(1)     NULL,

	CONSTRAINT "PK_TPHTable" PRIMARY KEY ("Id")
)

BeforeExecute
INSERT BULK "TPHTable"(Id, Discriminator, Value1, Value2, Value3, NullableBool)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Discriminator",
	t1."Id",
	t1."Value3",
	t1."NullableBool",
	t1."Value2",
	t1."Value1"
FROM
	"TPHTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 1
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 2
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 3
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Value1" = 'Str1' AND x."Value1" IS NOT NULL
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Value2" = 'Str2' AND x."Value2" IS NOT NULL
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Discriminator",
	x."Id",
	x."Value3",
	x."NullableBool",
	x."Value2",
	x."Value1"
FROM
	"TPHTable" x
WHERE
	x."Value3" = 'Str3' AND x."Value3" IS NOT NULL
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TPHTable"

