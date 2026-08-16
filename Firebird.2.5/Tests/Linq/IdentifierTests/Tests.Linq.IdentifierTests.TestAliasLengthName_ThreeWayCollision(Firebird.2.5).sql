-- Firebird.2.5 Firebird
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"longLongLongLongVeryLongVer_2"."ParentID",
	"longLongLongLongVeryLongVer_2"."Value1"
FROM
	"Parent" "longLongLongLongVeryLongVer_2"
		INNER JOIN "Child" "longLongLongLongVeryLongVer" ON "longLongLongLongVeryLongVer"."ParentID" = "longLongLongLongVeryLongVer_2"."ParentID"
		INNER JOIN "GrandChild" "longLongLongLongVeryLongVer_1" ON "longLongLongLongVeryLongVer_1"."ChildID" = "longLongLongLongVeryLongVer"."ChildID"
WHERE
	"longLongLongLongVeryLongVer_2"."ParentID" = @parentId

