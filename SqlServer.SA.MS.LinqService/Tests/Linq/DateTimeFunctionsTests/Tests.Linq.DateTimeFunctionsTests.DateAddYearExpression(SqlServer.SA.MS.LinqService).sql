﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 11

SELECT
	Convert(Date, DateAdd(year, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

