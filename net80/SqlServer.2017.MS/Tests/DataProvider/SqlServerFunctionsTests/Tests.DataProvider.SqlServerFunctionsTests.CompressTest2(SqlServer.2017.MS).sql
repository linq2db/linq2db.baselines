BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x010203

SELECT
	COMPRESS(@p)

