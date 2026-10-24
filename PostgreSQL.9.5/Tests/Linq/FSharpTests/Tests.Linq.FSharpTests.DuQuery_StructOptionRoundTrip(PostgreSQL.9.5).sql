-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 10

INSERT INTO "StructDuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	:Id,
	:Key
)

-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Key Integer -- Int32
SET     @Key = NULL

INSERT INTO "StructDuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	:Id,
	:Key
)

-- PostgreSQL.9.5 PostgreSQL
SELECT
	x."Key"
FROM
	"StructDuOptRow" x
ORDER BY
	x."Id"

