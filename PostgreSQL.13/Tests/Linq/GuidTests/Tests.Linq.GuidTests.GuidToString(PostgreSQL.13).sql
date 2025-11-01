-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id"::VarChar(36)
FROM
	"TableWithGuid" t
LIMIT 1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	t."Id"::VarChar(36) LIKE '%63d-0f%' ESCAPE '~'

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	t."Id"::VarChar(36) LIKE 'bc7b6%' ESCAPE '~'

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	t."Id"::VarChar(36) LIKE '%8f4-53%' ESCAPE '~'

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	Lower(t."Id"::VarChar(36)) LIKE '8f4-53%' ESCAPE '~'

