-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	123
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

