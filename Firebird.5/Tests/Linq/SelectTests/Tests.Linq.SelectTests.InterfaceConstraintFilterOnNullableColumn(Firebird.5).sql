-- Firebird.5 Firebird4
DECLARE @parentId Integer -- Int32
SET     @parentId = 12

SELECT
	"i"."Id",
	"i"."Name",
	"i"."ParentId"
FROM
	"ParentIdNullableTable" "i"
WHERE
	"i"."ParentId" = @parentId

