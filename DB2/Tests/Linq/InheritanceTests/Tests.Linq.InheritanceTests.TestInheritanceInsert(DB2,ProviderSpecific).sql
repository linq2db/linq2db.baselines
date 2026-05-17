INSERT BULK "InheritanceFilter"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Code",
	"t1"."Id",
	"t1"."Child1Field",
	"t1"."Child2Field",
	"t1"."Grandchild11Field",
	"t1"."Grandchild12Field",
	"t1"."Grandchild21Field",
	"t1"."Grandchild22Field"
FROM
	"InheritanceFilter" "t1"

