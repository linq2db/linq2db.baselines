-- Firebird.2.5 Firebird
DECLARE @arr Integer -- Int32
SET     @arr = 1

SELECT FIRST 2
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = @arr

-- Firebird.2.5 Firebird
DECLARE @arr Integer -- Int32
SET     @arr = 2

SELECT FIRST 2
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = @arr

