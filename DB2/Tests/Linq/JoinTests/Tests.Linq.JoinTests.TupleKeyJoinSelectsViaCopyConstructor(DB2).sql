-- DB2 DB2.LUW DB2LUW
SELECT
	"k_1"."Id",
	"k_1"."Number",
	"k_1"."StatusBitmask",
	BitAnd("k_1"."StatusBitmask", 128),
	BitAnd(Coalesce("g_1"."StatusBitmask", 0), 128)
FROM
	"TupleJoinPerson" "k_1"
		LEFT JOIN "TupleJoinStudent" "g_1" ON "k_1"."Id" = "g_1"."Id" AND RTrim(Char("k_1"."Number")) = "g_1"."Number"

