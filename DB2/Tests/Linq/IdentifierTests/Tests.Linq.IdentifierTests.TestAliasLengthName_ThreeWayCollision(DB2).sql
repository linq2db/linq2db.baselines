-- DB2 DB2.LUW DB2LUW
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 1

SELECT
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"."ParentID",
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"."Value1"
FROM
	"Parent" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"
		INNER JOIN "Child" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild" ON "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild"."ParentID" = "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"."ParentID"
		INNER JOIN "GrandChild" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestGrand" ON "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestGrand"."ChildID" = "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild"."ChildID"
WHERE
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"."ParentID" = @parentId

