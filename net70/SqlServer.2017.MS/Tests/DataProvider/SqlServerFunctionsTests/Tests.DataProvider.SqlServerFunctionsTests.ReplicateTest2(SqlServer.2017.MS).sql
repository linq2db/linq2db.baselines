BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p_1 VarBinary(8000) -- Binary
SET     @p_1 = 0x61

SELECT
	REPLICATE(@p_1, 2)

