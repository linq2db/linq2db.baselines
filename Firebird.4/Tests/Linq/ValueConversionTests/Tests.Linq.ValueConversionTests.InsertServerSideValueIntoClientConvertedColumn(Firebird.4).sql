-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Plain",
	"t1"."Date"
FROM
	"ShiftedDateRow" "t1"
FETCH NEXT 2 ROWS ONLY

