﻿BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @dateTime DateTime2
SET     @dateTime = DATETIME2FROMPARTS(1992, 1, 11, 1, 11, 21, 1000000, 7)

SELECT TOP (@take)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @dateTime DateTime2
SET     @dateTime = DATETIME2FROMPARTS(1993, 1, 11, 1, 11, 21, 1000000, 7)

SELECT TOP (@take)
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] > @dateTime

