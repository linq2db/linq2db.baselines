-- SapHana.Native SapHana
DECLARE @test TimeStamp -- DateTime2
SET     @test = TIMESTAMP '2026-06-06 02:01:01.0000000'

UPDATE
	"ShiftedDateRow" "t1"
SET
	"Date" = CASE
		WHEN "t1"."Date" IS NOT NULL THEN :"test"
		ELSE Add_Days("t1"."Plain", 1)
	END

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Plain",
	"t1"."Date"
FROM
	"ShiftedDateRow" "t1"
ORDER BY
	"t1"."Id"

