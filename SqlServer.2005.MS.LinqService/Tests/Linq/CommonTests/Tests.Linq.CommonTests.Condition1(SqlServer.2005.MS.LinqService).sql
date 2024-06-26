﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN NOT ([p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0)
			THEN [p].[FirstName]
		WHEN NOT ([p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0)
			THEN [p].[MiddleName]
		ELSE [p].[LastName]
	END
FROM
	[Person] [p]

