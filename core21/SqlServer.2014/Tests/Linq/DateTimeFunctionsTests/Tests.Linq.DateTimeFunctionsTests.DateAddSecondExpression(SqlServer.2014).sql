﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @p_1 Float -- Double
SET     @p_1 = 41

SELECT
	DateAdd(second, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

