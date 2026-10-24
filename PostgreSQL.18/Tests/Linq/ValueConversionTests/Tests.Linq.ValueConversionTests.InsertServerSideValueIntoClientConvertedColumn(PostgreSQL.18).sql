-- PostgreSQL.18 PostgreSQL12
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Plain",
	t1."Date"
FROM
	"Issue5975Row" t1
LIMIT 2

