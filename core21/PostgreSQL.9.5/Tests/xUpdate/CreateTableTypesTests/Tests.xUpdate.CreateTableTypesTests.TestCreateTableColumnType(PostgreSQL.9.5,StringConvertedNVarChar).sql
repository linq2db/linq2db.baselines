﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "CreateTableTypes"
(
	"StringConverted" VarChar NOT NULL,
	"Id"              Int     NOT NULL
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringConverted Text(4) -- String
SET     @StringConverted = 'null'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringConverted"
)
VALUES
(
	:Id,
	:StringConverted
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringConverted Text(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringConverted"
)
VALUES
(
	:Id,
	:StringConverted
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."StringConverted"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTypes"

