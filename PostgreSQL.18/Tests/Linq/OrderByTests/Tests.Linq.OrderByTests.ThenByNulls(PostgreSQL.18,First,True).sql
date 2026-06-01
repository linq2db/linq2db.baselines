-- PostgreSQL.18 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	t1."Id",
	t1."Grp",
	t1."Value"
FROM
	"NullsTable" t1
ORDER BY
	t1."Grp",
	t1."Value" DESC NULLS FIRST,
	t1."Id"
LIMIT :take

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Grp",
	t1."Value"
FROM
	"NullsTable" t1

