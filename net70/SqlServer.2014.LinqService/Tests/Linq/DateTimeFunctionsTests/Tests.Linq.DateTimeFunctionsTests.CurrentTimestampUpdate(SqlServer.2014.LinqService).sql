﻿BeforeExecute
-- SqlServer.2014

UPDATE
	[p]
SET
	[p].[BoolValue] = 1,
	[p].[DateTimeValue] = CURRENT_TIMESTAMP
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[ID] = 100000

