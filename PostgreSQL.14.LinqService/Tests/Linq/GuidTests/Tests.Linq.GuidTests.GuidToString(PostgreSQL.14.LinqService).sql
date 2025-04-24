BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Uuid -- Guid
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'::uuid

INSERT INTO "TableWithGuid"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id"::VarChar(36)
FROM
	"TableWithGuid" t
LIMIT 1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	t."Id"::VarChar(36) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	t."Id"::VarChar(36) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	t."Id"::VarChar(36) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	Lower(t."Id"::VarChar(36)) LIKE '293ae%' ESCAPE '~'

