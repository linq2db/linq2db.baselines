﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	(VALUES
		(N'Janet'), (N'Doe'), (N'John'), (N'Doe')
	) [n]([item])
		INNER JOIN [Person] [p] ON [n].[item] = [p].[LastName]

