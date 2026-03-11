-- DB2 DB2.LUW DB2LUW

SELECT
	"k_1"."Id",
	"k_1"."Number",
	"k_1"."StatusBitmask",
	BitAnd("k_1"."StatusBitmask", 128),
	BitAnd("g_1"."StatusBitmask", 128)
FROM
	"i1084_person" "k_1"
		LEFT JOIN "i1084_student" "g_1" ON "k_1"."Id" = "g_1"."Id" AND RTrim(Char("k_1"."Number")) = "g_1"."Number"

