BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int64 Bigint -- Int64
SET     @Int64 = 0::bigint

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int64 Bigint -- Int64
SET     @Int64 = 3::bigint

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Int64"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

