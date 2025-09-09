BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	([p].[PersonID] + @n) - 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + @n = 2

