-- DB2 DB2.LUW DB2LUW
DECLARE @arr Integer(4) -- Int32
SET     @arr = 1

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = @arr
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @arr Integer(4) -- Int32
SET     @arr = 2

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = @arr
FETCH NEXT 2 ROWS ONLY

