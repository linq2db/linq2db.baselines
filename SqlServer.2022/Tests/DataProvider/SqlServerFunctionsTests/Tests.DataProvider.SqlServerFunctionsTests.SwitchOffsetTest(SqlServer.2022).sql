﻿BeforeExecute
-- SqlServer.2022
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	SWITCHOFFSET(@p, N'-04:00')

