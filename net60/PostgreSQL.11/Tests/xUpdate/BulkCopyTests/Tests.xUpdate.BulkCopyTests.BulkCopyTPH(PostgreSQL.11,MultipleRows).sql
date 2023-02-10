﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TPHTable"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value1",
	"Value2",
	"Value3",
	"NullableBool"
)
VALUES
(1,1,'Str1',NULL,NULL,NULL),
(2,2,NULL,'Str2',NULL,NULL),
(3,3,NULL,NULL,'Str3','Y')

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Discriminator",
	t1."Value1",
	t1."Value2",
	t1."Value3",
	t1."NullableBool"
FROM
	"TPHTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	x."Id",
	x."Discriminator",
	x."Value1",
	x."Value2",
	x."Value3",
	x."NullableBool"
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
	x."Value3",
	x."NullableBool"
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
	x."Value3",
	x."NullableBool"
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
	x."Value3",
	x."NullableBool"
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
	x."Value3",
	x."NullableBool"
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
	x."Value3",
	x."NullableBool"
FROM
	"TPHTable" x
WHERE
	x."Value3" = 'Str3'
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TPHTable"

