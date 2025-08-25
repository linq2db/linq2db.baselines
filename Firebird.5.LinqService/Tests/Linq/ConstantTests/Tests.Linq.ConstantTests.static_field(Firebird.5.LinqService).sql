BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
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

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."GuidValue",
	"t1"."GuidNullableValue",
	"t1"."StringValue"
FROM
	"TestConstantsData" "t1"

