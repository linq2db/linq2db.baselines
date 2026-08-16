-- Firebird.3 Firebird3
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"longLongLongLongVeryLongVer_1"."ParentID",
	"longLongLongLongVeryLongVer_1"."Value1"
FROM
	"Parent" "longLongLongLongVeryLongVer_1"
		INNER JOIN "Child" "longLongLongLongVeryLongVer" ON "longLongLongLongVeryLongVer"."ParentID" = "longLongLongLongVeryLongVer_1"."ParentID"
WHERE
	"longLongLongLongVeryLongVer_1"."ParentID" = @parentId

