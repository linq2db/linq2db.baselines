﻿BeforeExecute
-- SqlServer.2012
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	TODATETIMEOFFSET(@p, N'-04:00')

