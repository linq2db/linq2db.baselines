﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	Convert(Date, DateAdd(month, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

