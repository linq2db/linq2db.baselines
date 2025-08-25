BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @Guid1 Guid
SET     @Guid1 = X'BC7B663D0FDE43278F925D8CC3A11D11'

SELECT
	"x"."Id",
	"x"."NullableGuid"
FROM
	"TableWithGuid" "x"
WHERE
	"x"."NullableGuid" IS NULL AND "x"."Id" = @Guid1
FETCH NEXT 2 ROWS ONLY

