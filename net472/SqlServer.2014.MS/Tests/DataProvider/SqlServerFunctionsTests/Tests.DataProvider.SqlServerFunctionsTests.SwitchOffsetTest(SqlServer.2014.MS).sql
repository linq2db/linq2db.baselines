﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2022-02-22 00:00:00.0000000 +00:00'

SELECT
	SWITCHOFFSET(@p_1, N'-04:00')

