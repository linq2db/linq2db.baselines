BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @dateTime  -- DateTime
SET     @dateTime = '1992-01-11 01:11:21.1'

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	DateTime([t].[DateTimeValue]) > DateTime(@dateTime)
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @dateTime  -- DateTime
SET     @dateTime = '1993-01-11 01:11:21.1'

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	DateTime([t].[DateTimeValue]) > DateTime(@dateTime)
LIMIT 1

