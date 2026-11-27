-- Firebird.2.5 Firebird
SELECT
	Bin_And("k_1"."StatusBitmask", 128),
	Bin_And(Coalesce("g_1"."StatusBitmask", 0), 128)
FROM
	"TupleJoinPerson" "k_1"
		LEFT JOIN "TupleJoinStudent" "g_1" ON "k_1"."Id" = "g_1"."Id" AND "k_1"."Number" = "g_1"."Number"

