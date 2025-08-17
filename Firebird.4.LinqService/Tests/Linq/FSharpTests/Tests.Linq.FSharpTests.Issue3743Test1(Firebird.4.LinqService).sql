BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"tupledArg"."ParentID",
	"tupledArg"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID",
	"cInfo"."ParentID",
	"cInfo"."Value1"
FROM
	"Parent" "tupledArg"
		INNER JOIN "Child" "c_1" ON "tupledArg"."ParentID" = "c_1"."ParentID"
		LEFT JOIN "Parent" "cInfo" ON "c_1"."ParentID" = "cInfo"."ParentID"
WHERE
	"tupledArg"."ParentID" = 1

