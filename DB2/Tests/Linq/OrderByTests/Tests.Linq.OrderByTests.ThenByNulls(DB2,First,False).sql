-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"
ORDER BY
	"t1"."Grp",
	"t1"."Value" NULLS FIRST,
	"t1"."Id"
FETCH NEXT 3 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Grp",
	"t1"."Value"
FROM
	"NullsTable" "t1"

