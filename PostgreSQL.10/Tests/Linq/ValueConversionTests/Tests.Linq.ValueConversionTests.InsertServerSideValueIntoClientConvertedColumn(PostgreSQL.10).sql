-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "Issue5975Row"
(
	"Id",
	"Plain",
	"Date"
)
VALUES
(
	1,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Plain",
	t1."Date"
FROM
	"Issue5975Row" t1
LIMIT 2

