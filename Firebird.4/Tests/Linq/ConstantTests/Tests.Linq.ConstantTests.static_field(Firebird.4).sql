-- Firebird.4 Firebird4
DECLARE @GuidNonReadonly Guid
SET     @GuidNonReadonly = X'BC7B663D0FDE43278F925D8CC3A11D11'

SELECT
	"e"."Id",
	"e"."GuidValue",
	"e"."GuidNullableValue",
	"e"."StringValue"
FROM
	"TestConstantsData" "e"
WHERE
	"e"."GuidValue" = @GuidNonReadonly AND "e"."GuidNullableValue" = @GuidNonReadonly

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."GuidValue",
	"t1"."GuidNullableValue",
	"t1"."StringValue"
FROM
	"TestConstantsData" "t1"

