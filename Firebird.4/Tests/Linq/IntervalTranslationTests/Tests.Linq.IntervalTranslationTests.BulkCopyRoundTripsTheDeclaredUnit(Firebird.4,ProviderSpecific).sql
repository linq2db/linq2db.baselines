-- Firebird.4 Firebird4
INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
SELECT 1,4567,45670000000,45670000000,4567 FROM rdb$database

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

