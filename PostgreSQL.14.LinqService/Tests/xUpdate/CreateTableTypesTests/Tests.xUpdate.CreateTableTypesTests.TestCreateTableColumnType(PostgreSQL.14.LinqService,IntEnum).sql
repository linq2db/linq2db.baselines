BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntEnum Integer -- Int32
SET     @IntEnum = 11

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnum"
)
VALUES
(
	:Id,
	:IntEnum
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntEnum Integer -- Int32
SET     @IntEnum = 60

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnum"
)
VALUES
(
	:Id,
	:IntEnum
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."IntEnum"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

