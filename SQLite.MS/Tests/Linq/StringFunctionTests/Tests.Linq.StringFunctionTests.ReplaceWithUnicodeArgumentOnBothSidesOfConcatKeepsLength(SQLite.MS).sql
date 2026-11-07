-- SQLite.MS SQLite
DECLARE @replacement NVarChar(1) -- String
SET     @replacement = 'e'
DECLARE @other NVarChar(1) -- String
SET     @other = 'f'
DECLARE @suffix NVarChar(1) -- String
SET     @suffix = 'x'

SELECT
	Coalesce(Replace([t].[Left], 'b', @replacement), '') || Coalesce(Replace([t].[Right], 'c', @replacement), ''),
	Coalesce(Replace([t].[NLeft], 'b', @replacement), '') || Coalesce(Replace([t].[NRight], 'c', @replacement), ''),
	Coalesce(Replace(Replace([t].[Left], 'b', @replacement), 'e', @other), '') || Coalesce(Replace(Replace([t].[Right], 'c', @replacement), 'e', @other), ''),
	Coalesce(RTRIM(Replace([t].[Left], 'b', @replacement)), '') || Coalesce(RTRIM(Replace([t].[Right], 'c', @replacement)), ''),
	Replace(Upper([t].[Left]), 'B', 'Ж') || Replace(Upper([t].[Right]), 'C', 'Ж'),
	Replace([t].[Left], 'b', 'Ж') || Replace([t].[Right], 'c', 'Ж'),
	Coalesce(Replace([t].[Left], 'b', @replacement), '') || Coalesce(Replace([t].[Right], 'c', @replacement), '') || Coalesce(@suffix, '')
FROM
	[SplitReplaceRow] [t]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @replacement NVarChar(1) -- String
SET     @replacement = 'e'

SELECT
	Coalesce([t1].[L], '') || Coalesce([t1].[R], '')
FROM
	(
		SELECT DISTINCT
			Replace([t].[Left], 'b', @replacement) as [L],
			Replace([t].[Right], 'c', @replacement) as [R]
		FROM
			[SplitReplaceRow] [t]
	) [t1]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @replacement NVarChar(1) -- String
SET     @replacement = 'e'
DECLARE @expected NVarChar(6000) -- String
SET     @expected = 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee'
-- value above truncated for logging

SELECT
	COUNT(*)
FROM
	[SplitReplaceRow] [t]
WHERE
	Coalesce(Replace([t].[Left], 'b', @replacement), '') || Coalesce(Replace([t].[Right], 'c', @replacement), '') = @expected

