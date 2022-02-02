BeforeExecute
-- SQLite.Classic SQLite
DECLARE @GuidValue  -- Guid
SET     @GuidValue = Cast(x'c070f9d2ac3587499cd55badb1757436' as blob)

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] = @GuidValue

