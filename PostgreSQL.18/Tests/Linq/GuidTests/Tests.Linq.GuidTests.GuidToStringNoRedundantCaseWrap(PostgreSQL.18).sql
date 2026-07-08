-- PostgreSQL.18 PostgreSQL12

SELECT
	Lower(t."Id"::VarChar(36))
FROM
	"TableWithGuid" t

-- PostgreSQL.18 PostgreSQL12

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	Lower(t."Id"::VarChar(36)) = 'x'

