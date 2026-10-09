-- SapHana.Odbc SapHanaOdbc
DECLARE @test DateTime
SET     @test = TIMESTAMP '2026-06-06 02:01:01.0000000'

UPDATE
	"Issue5975Row" "t1"
SET
	"Date" = CASE
		WHEN "t1"."Date" IS NOT NULL THEN ?
		ELSE Add_Days("t1"."Plain", 1)
	END

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Plain",
	"t1"."Date"
FROM
	"Issue5975Row" "t1"
ORDER BY
	"t1"."Id"

