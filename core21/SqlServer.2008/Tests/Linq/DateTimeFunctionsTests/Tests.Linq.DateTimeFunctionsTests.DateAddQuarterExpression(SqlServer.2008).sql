﻿BeforeExecute
-- SqlServer.2008
DECLARE @p_1 Float -- Double
SET     @p_1 = -1

SELECT
	DateAdd(quarter, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

