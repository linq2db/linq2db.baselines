BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TPHTable"
(
	"Id"            Int        NOT NULL,
	"Discriminator" Int        NOT NULL,
	"Value1"        text           NULL,
	"Value2"        text           NULL,
	"NullableBool"  VarChar(1)     NULL,
	"Value3"        text           NULL,

	CONSTRAINT "PK_TPHTable" PRIMARY KEY ("Id")
)

BeforeExecute
INSERT BULK "TPHTable"(Id, Discriminator, Value1, Value2, NullableBool, Value3

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Discriminator",
	t1."Value1",
	t1."Value2",
	t1."NullableBool",
	t1."Value3"
FROM
	"TPHTable" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 2
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 3
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Value1" = 'Str1'
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Value2" = 'Str2'
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."NullableBool",
	x."Value3"
FROM
	"TPHTable" x
WHERE
	x."Value3" = 'Str3'
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TPHTable"

