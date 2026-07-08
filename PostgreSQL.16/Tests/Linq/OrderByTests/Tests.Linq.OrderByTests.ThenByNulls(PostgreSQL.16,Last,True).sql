-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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
	t1."Value" DESC NULLS LAST,
	t1."Id"
LIMIT :take

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Grp",
	t1."Value"
FROM
	"NullsTable" t1

