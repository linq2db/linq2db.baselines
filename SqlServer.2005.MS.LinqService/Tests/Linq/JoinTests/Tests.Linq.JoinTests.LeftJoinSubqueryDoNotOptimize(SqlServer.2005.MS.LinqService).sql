﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[p].[PersonID],
	Coalesce([m_2].[MiddleName], N'default2')
FROM
	[Person] [p]
		LEFT JOIN (
			SELECT
				Coalesce([m_1].[MiddleName], N'default1') as [MiddleName],
				[m_1].[PersonID] + 1 as [c1]
			FROM
				[Person] [m_1]
		) [m_2] ON [p].[PersonID] = [m_2].[c1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

