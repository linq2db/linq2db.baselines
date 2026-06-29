-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	x."Id"
FROM
	"NullsTable" x
ORDER BY
	x."Value",
	x."Id"
LIMIT :take

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	x."Id"
FROM
	"NullsTable" x
ORDER BY
	x."Value",
	x."Id"
LIMIT :take

