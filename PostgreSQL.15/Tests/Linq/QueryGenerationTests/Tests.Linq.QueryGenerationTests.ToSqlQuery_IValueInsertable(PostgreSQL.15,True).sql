-- PostgreSQL.15 PostgreSQL13

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	123
)

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

