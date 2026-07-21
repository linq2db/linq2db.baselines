-- Firebird.5 Firebird4
DECLARE @flag Integer -- Int32
SET     @flag = 4
DECLARE @flag_1 Integer -- Int32
SET     @flag_1 = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Flags"
FROM
	"MappingTestClass" "t"
WHERE
	Bin_And("t"."Flags", CAST(@flag AS Int)) = @flag_1

