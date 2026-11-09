-- Firebird.2.5 Firebird
DECLARE @Value Integer -- Int32
SET     @Value = 100

SELECT FIRST 1
	"x"."Value"
FROM
	"ConvertedItem" "x"
WHERE
	"x"."Value" > @Value

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ConvertedItem" "t1"

-- Firebird.2.5 Firebird
DECLARE @Value Integer -- Int32
SET     @Value = 100

SELECT
	"t1"."Item1",
	"t1"."Item1_1"
FROM
	(
		SELECT
			1 as "c1"
		FROM rdb$database
	) "t2"
		LEFT JOIN (
			SELECT FIRST 1
				1 as "Item1",
				"x"."Value" as "Item1_1"
			FROM
				"ConvertedItem" "x"
			WHERE
				"x"."Value" > @Value
		) "t1" ON 1=1

