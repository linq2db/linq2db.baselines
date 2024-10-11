BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TPHTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t1."Discriminator" = 3 THEN True
		ELSE False
	END,
	t1."Id",
	t1."Value3",
	t1."NullableBool",
	CASE
		WHEN t1."Discriminator" = 2 THEN True
		ELSE False
	END,
	t1."Value2",
	CASE
		WHEN t1."Discriminator" = 1 THEN True
		ELSE False
	END,
	t1."Value1",
	t1."Discriminator"
FROM
	"TPHTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN x."Discriminator" = 3 THEN True
		ELSE False
	END,
	x."Id",
	x."Value3",
	x."NullableBool",
	CASE
		WHEN x."Discriminator" = 2 THEN True
		ELSE False
	END,
	x."Value2",
	CASE
		WHEN x."Discriminator" = 1 THEN True
		ELSE False
	END,
	x."Value1",
	x."Discriminator"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 1
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN x."Discriminator" = 3 THEN True
		ELSE False
	END,
	x."Id",
	x."Value3",
	x."NullableBool",
	CASE
		WHEN x."Discriminator" = 2 THEN True
		ELSE False
	END,
	x."Value2",
	CASE
		WHEN x."Discriminator" = 1 THEN True
		ELSE False
	END,
	x."Value1",
	x."Discriminator"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 2
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN x."Discriminator" = 3 THEN True
		ELSE False
	END,
	x."Id",
	x."Value3",
	x."NullableBool",
	CASE
		WHEN x."Discriminator" = 2 THEN True
		ELSE False
	END,
	x."Value2",
	CASE
		WHEN x."Discriminator" = 1 THEN True
		ELSE False
	END,
	x."Value1",
	x."Discriminator"
FROM
	"TPHTable" x
WHERE
	x."Discriminator" = 3
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN x."Discriminator" = 3 THEN True
		ELSE False
	END,
	x."Id",
	x."Value3",
	x."NullableBool",
	CASE
		WHEN x."Discriminator" = 2 THEN True
		ELSE False
	END,
	x."Value2",
	CASE
		WHEN x."Discriminator" = 1 THEN True
		ELSE False
	END,
	x."Value1",
	x."Discriminator"
FROM
	"TPHTable" x
WHERE
	x."Value1" = 'Str1'
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN x."Discriminator" = 3 THEN True
		ELSE False
	END,
	x."Id",
	x."Value3",
	x."NullableBool",
	CASE
		WHEN x."Discriminator" = 2 THEN True
		ELSE False
	END,
	x."Value2",
	CASE
		WHEN x."Discriminator" = 1 THEN True
		ELSE False
	END,
	x."Value1",
	x."Discriminator"
FROM
	"TPHTable" x
WHERE
	x."Value2" = 'Str2'
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN x."Discriminator" = 3 THEN True
		ELSE False
	END,
	x."Id",
	x."Value3",
	x."NullableBool",
	CASE
		WHEN x."Discriminator" = 2 THEN True
		ELSE False
	END,
	x."Value2",
	CASE
		WHEN x."Discriminator" = 1 THEN True
		ELSE False
	END,
	x."Value1",
	x."Discriminator"
FROM
	"TPHTable" x
WHERE
	x."Value3" = 'Str3'
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TPHTable"

