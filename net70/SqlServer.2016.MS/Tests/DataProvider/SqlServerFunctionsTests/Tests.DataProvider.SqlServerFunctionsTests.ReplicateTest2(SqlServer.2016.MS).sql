BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x61

SELECT
	REPLICATE(@p, 2)

