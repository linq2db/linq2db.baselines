BeforeExecute
-- SQLite.Classic SQLite
DECLARE @GuidValue_1  -- Guid
SET     @GuidValue_1 = Cast(x'c070f9d2ac3587499cd55badb1757436' as blob)

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] = @GuidValue_1

