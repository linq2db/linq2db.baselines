﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p NVarChar(4000) -- String
SET     @p = N'John'

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p

