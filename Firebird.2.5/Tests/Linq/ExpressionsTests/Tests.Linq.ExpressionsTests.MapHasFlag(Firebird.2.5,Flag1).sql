-- Firebird.2.5 Firebird
DECLARE @flag Integer -- Int32
SET     @flag = 1

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Flags"
FROM
	"MappingTestClass" "t"
WHERE
	Bin_And("t"."Flags", CAST(@flag AS Int)) = CAST(@flag AS Int)

