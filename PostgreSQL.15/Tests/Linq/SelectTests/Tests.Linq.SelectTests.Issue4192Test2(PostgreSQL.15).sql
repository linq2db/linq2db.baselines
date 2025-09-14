BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @parentId Integer -- Int32
SET     @parentId = 12

SELECT
	i."Id",
	i."Name",
	i."ParentId"
FROM
	"Issue4192TableNullable" i
WHERE
	i."ParentId" = :parentId

