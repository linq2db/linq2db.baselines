-- SQLite.Classic SQLite
UPDATE
	[SetFlagTable]
SET
	[F] = CASE
		WHEN [SetFlagTable].[C] IS NULL THEN [SetFlagTable].[F]
		WHEN [SetFlagTable].[A] = [SetFlagTable].[B] OR [SetFlagTable].[A] IS NULL AND [SetFlagTable].[B] IS NULL
			THEN 1
		ELSE 0
	END

-- SQLite.Classic SQLite
SELECT
	[r].[F]
FROM
	[SetFlagTable] [r]
ORDER BY
	[r].[Id]

