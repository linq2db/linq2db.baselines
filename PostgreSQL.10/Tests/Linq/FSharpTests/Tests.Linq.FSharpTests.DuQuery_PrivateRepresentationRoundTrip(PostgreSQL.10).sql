-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 7

INSERT INTO "PrivateDuRow"
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
	"PrivateDuRow" x
ORDER BY
	x."Id"

