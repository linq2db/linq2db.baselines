﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p_1 DateTimeOffset
SET     @p_1 = CAST('2022-02-22T00:00:00.0000000+00:00' AS DATETIMEOFFSET)

SELECT
	DATEPART(Month, @p_1)

