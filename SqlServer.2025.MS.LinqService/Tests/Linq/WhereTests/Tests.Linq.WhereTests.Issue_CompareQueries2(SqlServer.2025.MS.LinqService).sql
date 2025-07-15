﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 2) AND [p].[PersonID] NOT IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] IN (3)
	)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	COUNT([p].[PersonID])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (3) AND [p].[PersonID] NOT IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] IN (1, 2)
	)

