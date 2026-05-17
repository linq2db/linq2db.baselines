-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTimeNullable Timestamp -- DateTime2
SET     @DateTimeNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	:Id,
	:DateTimeNullable
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable Timestamp -- DateTime2
SET     @DateTimeNullable = '2018-11-25 01:02:03'::timestamp

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	:Id,
	:DateTimeNullable
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."DateTimeNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

