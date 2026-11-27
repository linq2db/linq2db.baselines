-- SqlCe
DECLARE @s NVarChar(1) -- String
SET     @s = 'e'
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
	CharIndex(@s, Substring([p].[LastName], 1, @Value), @Value_1) - 1 = 4 AND
	[p].[PersonID] = 2

