﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "CreateTableTypes"
(
	"Id"             Int   NOT NULL,
	"DoubleNullable" Float     NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DoubleNullable Double
SET     @DoubleNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	:Id,
	:DoubleNullable
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DoubleNullable Double
SET     @DoubleNullable = 4.1299999999999999

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	:Id,
	:DoubleNullable
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."DoubleNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "CreateTableTypes"

