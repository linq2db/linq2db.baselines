-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[u_1].[UserId],
	[u_1].[FirstName],
	[u_1].[Supervisor]
FROM
	[SampleClass] [t1]
		CROSS JOIN [SampleClass] [u]
		INNER JOIN [User] [u_1] ON [u_1].[UserId] = [t1].[Id]
LIMIT 1

