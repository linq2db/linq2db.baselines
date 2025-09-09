BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."StringEnum"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

