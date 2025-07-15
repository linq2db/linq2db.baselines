BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	:Id,
	:IntEnumNullable
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = 60

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	:Id,
	:IntEnumNullable
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."IntEnumNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

