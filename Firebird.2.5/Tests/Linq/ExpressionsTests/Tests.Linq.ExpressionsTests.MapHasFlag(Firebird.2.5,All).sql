-- Firebird.2.5 Firebird
DECLARE @flag Integer -- Int32
SET     @flag = 7
DECLARE @flag_1 Integer -- Int32
SET     @flag_1 = 7

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Flags"
FROM
	"MappingTestClass" "t"
WHERE
	Bin_And("t"."Flags", CAST(@flag AS Int)) = @flag_1

