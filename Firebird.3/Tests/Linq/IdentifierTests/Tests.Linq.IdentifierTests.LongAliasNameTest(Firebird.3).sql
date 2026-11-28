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

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

