-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"NullableLeftJoinTable" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"l"."Value1"
FROM
	"NullableLeftJoinTable" "p"
		LEFT JOIN "NullableLeftJoinTable" "l" ON "l"."Id" = "p"."Id" + 1

