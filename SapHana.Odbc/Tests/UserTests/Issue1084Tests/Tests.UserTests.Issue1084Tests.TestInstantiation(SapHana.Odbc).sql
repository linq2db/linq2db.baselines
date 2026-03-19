-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Number",
	"t1"."StatusBitmask",
	BITAND("t1"."StatusBitmask", 128),
	BITAND("g_1"."StatusBitmask", 128)
FROM
	"i1084_person" "t1"
		LEFT JOIN "i1084_student" "g_1" ON "t1"."Id" = "g_1"."Id" AND CAST("t1"."Number" AS NVarChar(11)) = "g_1"."Number"

