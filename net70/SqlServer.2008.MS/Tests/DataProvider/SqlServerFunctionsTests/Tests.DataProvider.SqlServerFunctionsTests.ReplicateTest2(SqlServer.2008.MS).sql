BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p_1 VarBinary(8000) -- Binary
SET     @p_1 = 0x61

SELECT
	REPLICATE(@p_1, 2)

