﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int     NOT NULL,
	"BooleanNullable" Boolean     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BooleanNullable Boolean
SET     @BooleanNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	:Id,
	:BooleanNullable
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BooleanNullable Boolean
SET     @BooleanNullable = True

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	:Id,
	:BooleanNullable
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."Id",
	t1."BooleanNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTypes"

