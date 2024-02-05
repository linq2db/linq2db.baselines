BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x61

SELECT
	REPLICATE(@p, 2)

