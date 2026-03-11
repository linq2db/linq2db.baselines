-- DB2 DB2.LUW DB2LUW

SELECT
	"o"."ParentID",
	"o"."Value1",
	"o"."ParentID",
	"o"."Value1",
	"pet"."ParentID",
	"pet"."Value1"
FROM
	"Parent" "o"
		LEFT JOIN "Parent" "pet" ON "o"."ParentID" = "pet"."ParentID"

