-- SqlServer.2016
DECLARE @replacement NVarChar(4000) -- String
SET     @replacement = N'ж'
DECLARE @expected NVarChar(6000) -- String
SET     @expected = N'жжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжж'
-- value above truncated for logging

SELECT
	COUNT(*)
FROM
	[SplitVarCharRow] [t]
WHERE
	(Coalesce(CAST(Replace([t].[Left], 'b', @replacement) AS NVarChar(Max)), N'') + [t].[Right]) = @expected

