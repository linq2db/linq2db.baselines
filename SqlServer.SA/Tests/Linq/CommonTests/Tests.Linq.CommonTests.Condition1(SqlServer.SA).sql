﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	CASE
		WHEN Len([p].[FirstName]) <> 0 THEN [p].[FirstName]
		WHEN NOT ([p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0)
			THEN [p].[MiddleName]
		ELSE [p].[LastName]
	END
FROM
	[Person] [p]

