BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String Varchar -- String
SET     @String = ''

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String Varchar(14) -- String
SET     @String = 'test max value'

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."String"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

