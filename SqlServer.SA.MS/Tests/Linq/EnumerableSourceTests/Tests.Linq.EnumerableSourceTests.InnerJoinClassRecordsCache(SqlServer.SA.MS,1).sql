﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(2), (3)
		) [n]([ID]) ON [p].[PersonID] = [n].[ID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(4), (5)
		) [n]([ID]) ON [p].[PersonID] = [n].[ID]

