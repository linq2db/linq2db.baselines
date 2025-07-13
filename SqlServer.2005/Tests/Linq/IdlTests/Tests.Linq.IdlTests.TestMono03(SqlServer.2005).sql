BeforeExecute
-- SqlServer.2005
DECLARE @p1 NVarChar(4000) -- String
SET     @p1 = N'A'
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	[x_1].[FirstName]
FROM
	[Person] [x_1],
	[Patient] [z]
WHERE
	[x_1].[FirstName] = @p1 OR [z].[PersonID] = @Value

