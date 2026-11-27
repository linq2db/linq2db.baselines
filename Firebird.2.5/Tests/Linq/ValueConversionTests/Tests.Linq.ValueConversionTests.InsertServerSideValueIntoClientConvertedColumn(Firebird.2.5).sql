-- Firebird.2.5 Firebird
INSERT INTO "ShiftedDateRow"
(
	"Id",
	"Plain",
	"Date"
)
VALUES
(
	1,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
)

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Plain",
	"t1"."Date"
FROM
	"ShiftedDateRow" "t1"

