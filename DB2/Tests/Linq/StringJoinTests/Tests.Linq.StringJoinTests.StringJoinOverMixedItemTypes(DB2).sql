-- DB2 DB2.LUW DB2LUW
SELECT
	"e"."Value1" || ',' || Coalesce("e"."Name", '') || ',' || "e"."Id"
FROM
	"JoinProbeEntity" "e"

