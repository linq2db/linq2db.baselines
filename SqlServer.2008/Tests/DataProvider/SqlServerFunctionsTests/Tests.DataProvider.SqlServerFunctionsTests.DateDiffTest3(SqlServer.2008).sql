﻿BeforeExecute
-- SqlServer.2008
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)
DECLARE @p DateTimeOffset
SET     @p = CAST('2021-02-28T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

SELECT
	DATEDIFF(Month, @DateTimeOffset, @p)

