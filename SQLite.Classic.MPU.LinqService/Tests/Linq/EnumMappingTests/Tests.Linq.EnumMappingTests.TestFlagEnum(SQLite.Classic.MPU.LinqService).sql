﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	([t].[IntValue] & 1) <> 0

