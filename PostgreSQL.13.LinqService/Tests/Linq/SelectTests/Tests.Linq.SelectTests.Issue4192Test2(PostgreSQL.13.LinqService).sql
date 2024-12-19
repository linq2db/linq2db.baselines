BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4192TableNullable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4192TableNullable"
(
	"Name"     text     NULL,
	"ParentId" Int      NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @parentId Integer -- Int32
SET     @parentId = 12

SELECT
	i."Name",
	i."ParentId"
FROM
	"Issue4192TableNullable" i
WHERE
	i."ParentId" = :parentId

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4192TableNullable"

