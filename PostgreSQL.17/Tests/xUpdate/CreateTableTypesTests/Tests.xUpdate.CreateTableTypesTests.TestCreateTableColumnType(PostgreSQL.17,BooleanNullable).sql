-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BooleanNullable Boolean
SET     @BooleanNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	:Id,
	:BooleanNullable
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BooleanNullable Boolean
SET     @BooleanNullable = True

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	:Id,
	:BooleanNullable
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."BooleanNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

