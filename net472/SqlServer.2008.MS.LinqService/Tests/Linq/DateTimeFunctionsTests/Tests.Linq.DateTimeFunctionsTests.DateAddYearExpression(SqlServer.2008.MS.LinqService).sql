﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p_1 Int -- Int32
SET     @p_1 = 11

SELECT
	DateAdd(year, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

