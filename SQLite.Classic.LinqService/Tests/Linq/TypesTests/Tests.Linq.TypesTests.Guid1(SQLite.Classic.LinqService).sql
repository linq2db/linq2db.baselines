BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p  -- Guid
SET     @p = X'C070F9D2AC3587499CD55BADB1757436'

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] = @p

