﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTypes"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "CreateTableTypes"
(
	"Id"                 Int  NOT NULL,
	"StringEnumNullable" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable Text -- String
SET     @StringEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	:Id,
	:StringEnumNullable
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable Text(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	:Id,
	:StringEnumNullable
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."StringEnumNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTypes"

