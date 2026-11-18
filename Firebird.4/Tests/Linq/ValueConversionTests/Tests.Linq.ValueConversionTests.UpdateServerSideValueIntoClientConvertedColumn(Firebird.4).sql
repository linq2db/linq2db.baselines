-- Firebird.4 Firebird4
DECLARE @test TimeStamp -- DateTime
SET     @test = TIMESTAMP '2026-06-06 02:01:01.0000'

UPDATE
	"Issue5975Row" "t1"
SET
	"Date" = CASE
		WHEN "t1"."Date" IS NOT NULL THEN CAST(@test AS TimeStamp)
		ELSE DateAdd(Day, 1, "t1"."Plain")
	END

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Plain",
	"t1"."Date"
FROM
	"Issue5975Row" "t1"
ORDER BY
	"t1"."Id"

