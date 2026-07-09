-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable Text -- String
SET     @StringEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	:Id,
	:StringEnumNullable
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable Text(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	:Id,
	:StringEnumNullable
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."StringEnumNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

