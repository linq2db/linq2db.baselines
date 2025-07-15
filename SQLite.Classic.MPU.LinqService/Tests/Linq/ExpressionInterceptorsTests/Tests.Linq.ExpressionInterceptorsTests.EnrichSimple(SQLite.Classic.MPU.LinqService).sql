BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[u].[UserId],
	[u].[FirstName],
	[u].[Supervisor]
FROM
	[SampleClass] [t1]
		CROSS JOIN [User] [u]
LIMIT 1

