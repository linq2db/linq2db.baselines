﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	CAST(DateAdd(quarter, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

