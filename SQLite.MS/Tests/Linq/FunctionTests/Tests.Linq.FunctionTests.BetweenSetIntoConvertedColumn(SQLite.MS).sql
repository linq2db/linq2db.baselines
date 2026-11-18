-- SQLite.MS SQLite
DECLARE @Marked NVarChar(1) -- String
SET     @Marked = 'Y'
DECLARE @Marked_1 NVarChar(1) -- String
SET     @Marked_1 = 'N'

UPDATE
	[BetweenTargetRow]
SET
	[Marked] = CASE
		WHEN [BetweenTargetRow].[Value] BETWEEN 4 AND 6 THEN @Marked
		ELSE @Marked_1
	END

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[Marked]
FROM
	[BetweenTargetRow] [r]
ORDER BY
	[r].[Id]

