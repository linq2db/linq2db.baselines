BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String Text -- String
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
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String Text(7) -- String
SET     @String = 'test 10'

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
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."String"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

