﻿BeforeExecute
-- SqlServer.2008
DECLARE @p_1 DateTime2
SET     @p_1 = CAST('2022-02-22T00:00:00.0000000' AS DATETIME2)

SELECT
	DATEPART(Month, @p_1)

