﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[n].[Name]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(N'Janet'), (N'Doe')
		) [n]([Name]) ON [p].[LastName] = [n].[Name]

