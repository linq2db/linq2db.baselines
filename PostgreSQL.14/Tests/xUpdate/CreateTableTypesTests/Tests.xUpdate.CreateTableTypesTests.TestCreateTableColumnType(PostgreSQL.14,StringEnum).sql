-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnum Text(2) -- String
SET     @StringEnum = '14'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnum"
)
VALUES
(
	:Id,
	:StringEnum
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnum Text(1) -- String
SET     @StringEnum = '4'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnum"
)
VALUES
(
	:Id,
	:StringEnum
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."StringEnum"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

