-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	Lower(t."Id"::VarChar(36))
FROM
	"TableWithGuid" t

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	Lower(t."Id"::VarChar(36)) = 'x'

