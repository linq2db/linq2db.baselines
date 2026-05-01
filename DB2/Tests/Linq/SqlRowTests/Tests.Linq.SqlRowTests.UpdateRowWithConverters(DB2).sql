-- DB2 DB2.LUW DB2LUW
DECLARE @Cents Integer(4) -- Int32
SET     @Cents = 100

UPDATE
	"ConvertedInts"
SET
	("Cents", "Ints") = (
		SELECT
			"src"."Cents" + @Cents,
			"src"."Ints" * "src"."Cents"
		FROM
			"ConvertedInts" "src"
		WHERE
			"src"."Id" = "ConvertedInts"."Id" - 1
	)
WHERE
	"ConvertedInts"."Id" = 2

-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Cents",
	"x"."Ints"
FROM
	"ConvertedInts" "x"
WHERE
	"x"."Id" = 2
FETCH NEXT 2 ROWS ONLY

