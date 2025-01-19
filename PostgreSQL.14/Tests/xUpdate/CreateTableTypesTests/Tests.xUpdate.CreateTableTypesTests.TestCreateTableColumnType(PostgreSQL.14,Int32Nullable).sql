BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int32Nullable Integer -- Int32
SET     @Int32Nullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int32Nullable"
)
VALUES
(
	:Id,
	:Int32Nullable
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int32Nullable Integer -- Int32
SET     @Int32Nullable = 2

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int32Nullable"
)
VALUES
(
	:Id,
	:Int32Nullable
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Int32Nullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

