﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2022, 2, 22, 0, 0, 0, 0, 0, 0, 7)

SELECT
	TODATETIMEOFFSET(@p, N'-04:00')

