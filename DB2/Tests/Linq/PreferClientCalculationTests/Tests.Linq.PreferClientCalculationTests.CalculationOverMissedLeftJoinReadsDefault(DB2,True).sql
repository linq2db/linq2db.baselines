-- DB2 DB2.LUW DB2LUW
SELECT
	"e"."Id",
	"j"."Value1",
	Abs(Coalesce("j"."Value1", 0) - 1),
	"j"."Date",
	Extract(year from "j"."Date"),
	CAST('2000-01-01' AS timestamp)
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Date"
FROM
	"MissedJoinEntity" "t1"

