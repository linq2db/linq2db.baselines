-- Firebird.2.5 Firebird
DECLARE @test TimeStamp -- DateTime
SET     @test = TIMESTAMP '2026-06-06 02:01:01.0000'

UPDATE
	"ShiftedDateRow" "t1"
SET
	"Date" = CASE
		WHEN "t1"."Date" IS NOT NULL THEN CAST(@test AS TimeStamp)
		ELSE DateAdd(Day, 1, "t1"."Plain")
	END

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."Plain",
	"t1"."Date"
FROM
	"ShiftedDateRow" "t1"
ORDER BY
	"t1"."Id"

