﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[PersonID],
	[p_1].[FirstName],
	[p_1].[LastName]
FROM
	[Person] [p_1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

