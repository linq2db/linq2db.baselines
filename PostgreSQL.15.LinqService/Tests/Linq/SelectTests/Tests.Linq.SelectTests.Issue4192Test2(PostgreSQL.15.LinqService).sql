BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @parentId Integer -- Int32
SET     @parentId = 12

SELECT
	i."Name",
	i."ParentId"
FROM
	"Issue4192TableNullable" i
WHERE
	i."ParentId" = :parentId

