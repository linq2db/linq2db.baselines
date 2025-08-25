BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 12

SELECT
	"i"."Name",
	"i"."ParentId"
FROM
	"Issue4192TableNullable" "i"
WHERE
	"i"."ParentId" = @parentId

