-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Number",
	"t1"."StatusBitmask",
	BitAnd("t1"."StatusBitmask", 128),
	BitAnd("g_1"."StatusBitmask", 128)
FROM
	"i1084_person" "t1"
		LEFT JOIN "i1084_student" "g_1" ON "t1"."Id" = "g_1"."Id" AND RTrim(Char("t1"."Number")) = "g_1"."Number"

