﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[n].[Name]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(N'Janet'), (N'Doe')
		) [n]([Name]) ON [p].[LastName] = [n].[Name]

