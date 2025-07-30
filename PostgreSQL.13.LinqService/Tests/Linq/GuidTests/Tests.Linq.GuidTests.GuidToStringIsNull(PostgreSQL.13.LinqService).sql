BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Guid1 Uuid -- Guid
SET     @Guid1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid

SELECT
	x."Id",
	x."NullableGuid"
FROM
	"TableWithGuid" x
WHERE
	x."NullableGuid" IS NULL AND x."Id" = :Guid1
LIMIT 2

