BeforeExecute
-- SqlServer.2022
DECLARE @p_1 VarBinary(8000) -- Binary
SET     @p_1 = 0x010203

SELECT
	COMPRESS(@p_1)

