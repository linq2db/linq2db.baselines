﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[FirstName] + N'/' + [p_1].[LastName]
FROM
	[Person] [p_1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[FirstName] + N'/' + [p].[LastName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[FirstName]
FROM
	[Person] [p_1]

