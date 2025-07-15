BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Id"::VarChar(36)
FROM
	"TableWithGuid" t
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	t."Id"::VarChar(36) LIKE '%63d-0f%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	t."Id"::VarChar(36) LIKE 'bc7b6%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	t."Id"::VarChar(36) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	Lower(t."Id"::VarChar(36)) LIKE '8f4-53%' ESCAPE '~'

