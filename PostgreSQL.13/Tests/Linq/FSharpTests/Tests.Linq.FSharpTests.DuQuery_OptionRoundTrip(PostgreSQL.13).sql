-- PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 10

INSERT INTO "DuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	:Id,
	:Key
)

-- PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Key Integer -- Int32
SET     @Key = NULL

INSERT INTO "DuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	:Id,
	:Key
)

-- PostgreSQL.13 PostgreSQL12
SELECT
	x."Key"
FROM
	"DuOptRow" x
ORDER BY
	x."Id"

