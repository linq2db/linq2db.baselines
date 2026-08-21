-- Firebird.2.5 Firebird
INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
SELECT 1,4567,45670000000,45670000000,4567 FROM rdb$database

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"

