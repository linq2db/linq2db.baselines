-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT DISTINCT
	(
		SELECT
			[cc].[Name]
		FROM
			[Issue4160City] [cc]
		WHERE
			[cc].[Code] = [t1].[Code] OR [cc].[Code] IS NULL AND [t1].[Code] IS NULL
		LIMIT 1
	)
FROM
	[Issue4160Person] [t1]

