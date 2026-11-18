-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Key Integer -- Int32
SET     @Key = 10

SELECT
	x."Id",
	x."Key"
FROM
	"DuOptRow" x
WHERE
	x."Key" = :Key

