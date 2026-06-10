-- PostgreSQL.18 PostgreSQL

SELECT
	Lower(t."Id"::VarChar(36))
FROM
	"TableWithGuid" t

-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	Lower(t."Id"::VarChar(36)) = 'x'

