﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Car"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE IF NOT EXISTS "Car"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_Car" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "Car"
(
	"Id",
	"Name"
)
VALUES
(1,'Special'),
(2,'NoSpecial')

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	(x."Name" <> 'Special' OR x."Name" IS NULL)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" = 'Special'

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	(x."Name" <> 'Special' OR x."Name" IS NULL)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" = 'Special'

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Car"

