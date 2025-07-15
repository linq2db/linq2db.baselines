BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p NVarChar(4000) -- String
SET     @p = N'abc'

SELECT
	[t].[FirstName],
	[t].[PersonID],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

