-- DB2 DB2.LUW DB2LUW
DECLARE @test Timestamp(20) -- DateTime
SET     @test = CAST('2026-06-06-02.01.01.000000' AS TIMESTAMP(6))

UPDATE
	"Issue5975Row" "t1"
SET
	"Date" = CASE
		WHEN "t1"."Date" IS NOT NULL THEN CAST(@test AS timestamp)
		ELSE "t1"."Plain" + 1 DAY
	END

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Plain",
	"t1"."Date"
FROM
	"Issue5975Row" "t1"
ORDER BY
	"t1"."Id"

