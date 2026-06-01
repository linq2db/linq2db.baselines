-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

