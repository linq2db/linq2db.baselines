﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestEntity1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestEntity1"
(
	"Id"     Int  NOT NULL,
	"Field1" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestEntity2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestEntity2"
(
	"Id"     Int  NOT NULL,
	"Field1" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Field1",
	t2."Id",
	t2."Field1"
FROM
	"TestEntity1" t1
		LEFT JOIN "TestEntity2" t2 ON t1."Id" = t2."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Field1",
	t2."Id",
	t2."Field1"
FROM
	"TestEntity2" t2
		LEFT JOIN "TestEntity1" t1 ON t2."Id" = t1."Id"
WHERE
	t1."Id" IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Field1",
	NULL::Int,
	NULL::Int,
	NULL::text,
	t2."Id",
	t2."Id",
	t2."Field1",
	NULL::Int,
	NULL::text
FROM
	"TestEntity1" t1
		LEFT JOIN "TestEntity2" t2 ON t1."Id" = t2."Id"
UNION ALL
SELECT
	NULL::Int,
	NULL::text,
	t1_1."Id",
	t1_1."Id",
	t1_1."Field1",
	NULL::Int,
	NULL::Int,
	NULL::text,
	t2_1."Id",
	t2_1."Field1"
FROM
	"TestEntity2" t2_1
		LEFT JOIN "TestEntity1" t1_1 ON t2_1."Id" = t1_1."Id"
WHERE
	t1_1."Id" IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestEntity2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestEntity1"

