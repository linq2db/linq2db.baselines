﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Second Int -- Int32
SET     @Second = -35

SELECT
	DatePart(second, DateAdd(second, @Second, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

