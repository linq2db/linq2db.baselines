﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 2 AS [PersonID]
			UNION ALL
			SELECT 3) [n] ON [p].[PersonID] = [n].[PersonID]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 4 AS [PersonID]
			UNION ALL
			SELECT 5) [n] ON [p].[PersonID] = [n].[PersonID]

