﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as NVarChar(100)) || '-02-24 00:00:00')
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(StrFTime('%d', DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as NVarChar(100)) || '-02-24 00:00:00')) as int) > 0

