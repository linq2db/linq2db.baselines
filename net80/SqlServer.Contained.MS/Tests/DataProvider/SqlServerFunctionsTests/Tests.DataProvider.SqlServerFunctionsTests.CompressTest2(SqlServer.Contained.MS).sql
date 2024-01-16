BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x010203

SELECT
	COMPRESS(@p)

