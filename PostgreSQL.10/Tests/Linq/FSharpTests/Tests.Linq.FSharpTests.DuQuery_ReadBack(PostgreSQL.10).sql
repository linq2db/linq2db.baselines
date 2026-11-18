-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 10

INSERT INTO "DuRow"
(
	"Id",
	"Key"
)
VALUES
(
	:Id,
	:Key
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Key Integer -- Int32
SET     @Key = 20

INSERT INTO "DuRow"
(
	"Id",
	"Key"
)
VALUES
(
	:Id,
	:Key
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."Key"
FROM
	"DuRow" x
ORDER BY
	x."Id"

