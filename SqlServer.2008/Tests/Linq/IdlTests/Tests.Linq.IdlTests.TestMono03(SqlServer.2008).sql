BeforeExecute
-- SqlServer.2008
DECLARE @p1 NVarChar(4000) -- String
SET     @p1 = N'A'
DECLARE @p2 Int -- Int32
SET     @p2 = 1

SELECT
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	[x_1].[FirstName]
FROM
	[Person] [x_1]
		CROSS JOIN [Patient] [z]
WHERE
	[x_1].[FirstName] = @p1 OR [z].[PersonID] = @p2

