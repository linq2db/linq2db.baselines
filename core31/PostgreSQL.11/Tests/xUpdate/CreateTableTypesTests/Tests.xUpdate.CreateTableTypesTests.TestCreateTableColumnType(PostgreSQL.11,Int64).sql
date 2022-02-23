﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "CreateTableTypes"
(
	"Id"    Int    NOT NULL,
	"Int64" BigInt NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int64 Bigint -- Int64
SET     @Int64 = 0

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64"
)
VALUES
(
	:Id,
	:Int64
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int64 Bigint -- Int64
SET     @Int64 = 3

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64"
)
VALUES
(
	:Id,
	:Int64
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Int64"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTypes"

