-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Int64"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

