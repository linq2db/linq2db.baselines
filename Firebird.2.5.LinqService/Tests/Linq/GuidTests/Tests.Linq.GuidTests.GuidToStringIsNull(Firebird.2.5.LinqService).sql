BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Guid1 Guid
SET     @Guid1 = X'BC7B663D0FDE43278F925D8CC3A11D11'

SELECT FIRST 2
	"x"."Id",
	"x"."NullableGuid"
FROM
	"TableWithGuid" "x"
WHERE
	"x"."NullableGuid" IS NULL AND "x"."Id" = @Guid1

