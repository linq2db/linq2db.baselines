-- SqlServer.2017.MS SqlServer.2017
DECLARE @s NVarChar(4000) -- String
SET     @s = N'e'
DECLARE @Value Int -- Int32
SET     @Value = 7
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 3

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex(@s, Left([p].[LastName], @Value), @Value_1) - 1 = 4 AND
	[p].[PersonID] = 2

