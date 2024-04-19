BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestFolder"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestFolder"
(
	"Id"       uuid NOT NULL,
	"Label"    text     NULL,
	"ParentId" uuid     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Guid1 Uuid -- Guid
SET     @Guid1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid

WITH "CTE" ("ParentId", "Label")
AS
(
	SELECT
		c_1."ParentId",
		c_1."Label"
	FROM
		"TestFolder" c_1
	WHERE
		c_1."ParentId" IS NOT NULL
)
INSERT INTO "TestFolder"
(
	"Id",
	"Label"
)
SELECT
	:Guid1,
	parent."Label" || '/' || child."Label"
FROM
	"CTE" child
		INNER JOIN "TestFolder" parent ON child."ParentId" = parent."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestFolder"

