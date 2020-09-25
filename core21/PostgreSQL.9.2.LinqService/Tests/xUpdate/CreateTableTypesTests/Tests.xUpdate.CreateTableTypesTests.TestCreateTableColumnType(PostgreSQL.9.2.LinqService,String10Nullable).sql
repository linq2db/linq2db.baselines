BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "CreateTableTypes"
(
	"String" text     NULL,
	"Id"     Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String Text -- String
SET     @String = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"String"
)
VALUES
(
	:Id,
	:String
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String Text(9) -- String
SET     @String = 'test 10 n'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"String"
)
VALUES
(
	:Id,
	:String
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."Id",
	t1."String"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "CreateTableTypes"

