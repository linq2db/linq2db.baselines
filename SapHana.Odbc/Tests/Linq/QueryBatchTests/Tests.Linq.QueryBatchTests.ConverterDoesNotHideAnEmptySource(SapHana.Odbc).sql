-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = 100

SELECT
	"x"."Value"
FROM
	"ConvertedItem" "x"
WHERE
	"x"."Value" > ?
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ConvertedItem" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = 100

SELECT
	"t1"."Item1",
	"t1"."Item1_1"
FROM
	(
		SELECT
			1 as "c1"
		FROM DUMMY
	) "t2"
		LEFT JOIN (
			SELECT
				1 as "Item1",
				"x"."Value" as "Item1_1"
			FROM
				"ConvertedItem" "x"
			WHERE
				"x"."Value" > ?
			LIMIT 1
		) "t1" ON 1=1

