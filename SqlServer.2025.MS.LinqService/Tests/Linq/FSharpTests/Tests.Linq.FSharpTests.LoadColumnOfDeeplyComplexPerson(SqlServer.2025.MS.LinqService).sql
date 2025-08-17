BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (2)
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

