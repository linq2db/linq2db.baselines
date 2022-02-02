BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Text(4) -- String
SET     @Value1 = 'Str1'
DECLARE @Discriminator Integer -- Int32
SET     @Discriminator = 1

INSERT INTO "TPHTable"
(
	"Id",
	"Value1",
	"Discriminator"
)
VALUES
(
	:Id,
	:Value1,
	:Discriminator
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value2 Text(4) -- String
SET     @Value2 = 'Str2'
DECLARE @Discriminator Integer -- Int32
SET     @Discriminator = 2

INSERT INTO "TPHTable"
(
	"Id",
	"Value2",
	"Discriminator"
)
VALUES
(
	:Id,
	:Value2,
	:Discriminator
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @NullableBool Varchar(1) -- String
SET     @NullableBool = 'Y'
DECLARE @Value3 Text(4) -- String
SET     @Value3 = 'Str3'
DECLARE @Discriminator Integer -- Int32
SET     @Discriminator = 3

INSERT INTO "TPHTable"
(
	"Id",
	"NullableBool",
	"Value3",
	"Discriminator"
)
VALUES
(
	:Id,
	:NullableBool,
	:Value3,
	:Discriminator
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TPHTable"

