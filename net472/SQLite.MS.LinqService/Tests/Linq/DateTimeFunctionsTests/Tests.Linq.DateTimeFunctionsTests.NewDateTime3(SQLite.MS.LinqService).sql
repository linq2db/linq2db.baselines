﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateTime(Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as NVarChar(100)) || '-10-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%m', [t].[c1]) as int) = 10

