﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[u].[UserId],
	[u].[FirstName],
	[u].[Supervisor]
FROM
	[SampleClass] [t1]
		INNER JOIN ([SampleClass] [u_1]
			INNER JOIN [User] [u] ON 1=1)
		ON [u].[UserId] = [t1].[Id]
LIMIT 1

