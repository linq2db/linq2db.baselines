﻿BeforeExecute
-- SqlServer.2005
DECLARE @p_1 Float -- Double
SET     @p_1 = -1

SELECT
	DateAdd(week, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

