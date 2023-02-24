BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTypes"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "CreateTableTypes"
(
	"Id"      Int     NOT NULL,
	"Boolean" Boolean NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Boolean_1 Boolean
SET     @Boolean_1 = False

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	:Id,
	:Boolean_1
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Boolean_1 Boolean
SET     @Boolean_1 = True

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	:Id,
	:Boolean_1
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Boolean"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTypes"

