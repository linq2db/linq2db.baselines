﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	Convert(Date, DateAdd(quarter, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

