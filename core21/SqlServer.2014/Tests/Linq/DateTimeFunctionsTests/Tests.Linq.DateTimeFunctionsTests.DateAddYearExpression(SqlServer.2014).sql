﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @p_1 Float -- Double
SET     @p_1 = 11

SELECT
	DateAdd(year, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

