﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[ID],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[StringValue] <> '' OR [t].[StringValue] IS NULL
ORDER BY
	[t].[ID]

