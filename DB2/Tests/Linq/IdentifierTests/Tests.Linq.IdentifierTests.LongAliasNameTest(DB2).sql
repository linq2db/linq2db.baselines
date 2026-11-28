-- DB2 DB2.LUW DB2LUW
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 1

SELECT
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"."ParentID",
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"."Value1"
FROM
	"Parent" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"
		INNER JOIN "Child" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild" ON "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild"."ParentID" = "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"."ParentID"
WHERE
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent"."ParentID" = @parentId

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

