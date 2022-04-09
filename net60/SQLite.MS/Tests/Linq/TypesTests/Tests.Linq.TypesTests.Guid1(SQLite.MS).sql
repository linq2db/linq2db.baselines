BeforeExecute
-- SQLite.MS SQLite
DECLARE @GuidValue  -- Guid
SET     @GuidValue = X'C070F9D2AC3587499CD55BADB1757436'

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] = @GuidValue

