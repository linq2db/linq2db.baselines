BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Bit -- Boolean
SET     @p1 = 0

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(@p1 = 1, 0, CharIndex(N'oh', [p].[FirstName]) - 1) = 1 AND
	[p].[PersonID] = 1

