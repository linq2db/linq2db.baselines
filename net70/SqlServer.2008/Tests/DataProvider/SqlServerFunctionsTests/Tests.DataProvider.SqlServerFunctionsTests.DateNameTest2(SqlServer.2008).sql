﻿BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2022-03-22T00:00:00.0000000' AS DATETIME2)

SELECT
	DATENAME(Month, @p)

