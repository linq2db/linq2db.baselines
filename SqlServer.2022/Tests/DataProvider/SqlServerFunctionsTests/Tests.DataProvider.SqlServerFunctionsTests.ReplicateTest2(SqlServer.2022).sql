﻿BeforeExecute
-- SqlServer.2022
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x61

SELECT
	REPLICATE(@p, 2)

