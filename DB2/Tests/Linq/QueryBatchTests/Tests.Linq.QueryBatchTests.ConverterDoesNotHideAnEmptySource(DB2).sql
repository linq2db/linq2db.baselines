-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 100

SELECT
	"x"."Value"
FROM
	"ConvertedItem" "x"
WHERE
	"x"."Value" > @Value
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ConvertedItem" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 100

SELECT
	"t1"."Item1",
	"t1"."Item1_1"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYSIBM.SYSDUMMY1
	) "t2"
		LEFT JOIN (
			SELECT
				1 as "Item1",
				"x"."Value" as "Item1_1"
			FROM
				"ConvertedItem" "x"
			WHERE
				"x"."Value" > @Value
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

