﻿BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @Date Int -- Int32
SET     @Date = 1

SELECT
	CAST(DateAdd(year, @Date, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

