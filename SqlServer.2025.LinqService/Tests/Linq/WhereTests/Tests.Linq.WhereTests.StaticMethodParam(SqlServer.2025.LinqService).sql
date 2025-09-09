BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

