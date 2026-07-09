-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
VALUES
(
	543,
	123
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

