﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTimeOffset
SET     @p = CAST('2022-03-22T00:00:00.0000000+00:00' AS DATETIMEOFFSET)

SELECT
	DATENAME(Month, @p)

