-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	x."Id"
FROM
	"NullsTable" x
ORDER BY
	x."Value" NULLS LAST,
	x."Id"
LIMIT :take

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	x."Id"
FROM
	"NullsTable" x
ORDER BY
	x."Value" NULLS LAST,
	x."Id"
LIMIT :take

