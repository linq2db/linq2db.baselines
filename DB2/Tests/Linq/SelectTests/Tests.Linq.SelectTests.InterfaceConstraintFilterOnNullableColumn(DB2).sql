-- DB2 DB2.LUW DB2LUW
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 12

SELECT
	"i"."Id",
	"i"."Name",
	"i"."ParentId"
FROM
	"ParentIdNullableTable" "i"
WHERE
	"i"."ParentId" = @parentId

