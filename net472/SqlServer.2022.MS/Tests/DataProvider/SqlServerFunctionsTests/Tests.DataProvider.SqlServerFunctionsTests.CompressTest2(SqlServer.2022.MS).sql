BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x010203

SELECT
	COMPRESS(@p)

