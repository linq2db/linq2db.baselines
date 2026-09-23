-- DB2 DB2.LUW DB2LUW
DECLARE @bound Timestamp(20) -- DateTime
SET     @bound = '2000-01-01-00.00.00.000000'

SELECT
	"e"."Id",
	Coalesce("j"."Value1", 0) + 1,
	CASE
		WHEN Coalesce("j"."Value1", 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce("j"."Value1", 0) - 1),
	"j"."Date",
	CASE
		WHEN Coalesce("j"."Date", '0001-01-01-00.00.00.000000') > CAST(@bound AS timestamp)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Date", '0001-01-01-00.00.00.000000') < CAST(@bound AS timestamp)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Date", '0001-01-01-00.00.00.000000') > "e"."Date"
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Date", '0001-01-01-00.00.00.000000') <= "e"."Date"
			THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Date"
FROM
	"MissedJoinEntity" "t1"

