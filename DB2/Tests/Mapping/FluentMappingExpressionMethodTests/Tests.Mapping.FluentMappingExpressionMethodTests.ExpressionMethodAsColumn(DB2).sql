BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value",
	'M' || RTrim(Char("t1"."Id"))
FROM
	"InstanceClass" "t1"

