-- Firebird.3 Firebird3
DECLARE @arr Integer -- Int32
SET     @arr = 1

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = @arr
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @arr Integer -- Int32
SET     @arr = 2

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = @arr
FETCH NEXT 2 ROWS ONLY

