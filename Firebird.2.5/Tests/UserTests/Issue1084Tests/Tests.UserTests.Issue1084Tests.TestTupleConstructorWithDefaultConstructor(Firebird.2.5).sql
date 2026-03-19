-- Firebird.2.5 Firebird

SELECT
	Bin_And("t1"."StatusBitmask", 128),
	Bin_And("g_1"."StatusBitmask", 128)
FROM
	"i1084_person" "t1"
		LEFT JOIN "i1084_student" "g_1" ON "t1"."Id" = "g_1"."Id" AND "t1"."Number" = "g_1"."Number"

