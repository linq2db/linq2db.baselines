BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Guid1 Raw(16) -- Binary
SET     @Guid1 = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')

SELECT
	x."Id",
	x."NullableGuid"
FROM
	"TableWithGuid" x
WHERE
	x."NullableGuid" IS NULL AND x."Id" = :Guid1
FETCH NEXT 2 ROWS ONLY

