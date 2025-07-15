BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GuidNonReadonly VarBinary(16) -- Binary
SET     @GuidNonReadonly = BX'3D667BBCDE0F27438F925D8CC3A11D11'

SELECT
	"e"."Id",
	"e"."GuidValue",
	"e"."GuidNullableValue",
	"e"."StringValue"
FROM
	"TestConstantsData" "e"
WHERE
	"e"."GuidValue" = @GuidNonReadonly AND "e"."GuidNullableValue" = @GuidNonReadonly

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."GuidValue",
	"t1"."GuidNullableValue",
	"t1"."StringValue"
FROM
	"TestConstantsData" "t1"

