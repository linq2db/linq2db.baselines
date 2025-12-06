-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."TypeDiscriminator",
	"t1"."InheritanceParentId",
	"t1"."Name"
FROM
	"InheritanceParent" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."TypeDiscriminator",
	"t1"."InheritanceChildId",
	"t1"."InheritanceParentId",
	"t1"."Name"
FROM
	"InheritanceChild" "t1"

