-- Sybase.Managed Sybase
DECLARE @s UniVarChar(1) -- String
SET     @s = 'e'
DECLARE @Value Integer -- Int32
SET     @Value = 7
DECLARE @Value_1 Integer -- Int32
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
	CASE
		WHEN CHARINDEX(@s, Substring(Left([p].[LastName], @Value), @Value_1, Len(Left([p].[LastName], @Value)))) = 0
			THEN 0
		ELSE CHARINDEX(@s, Substring(Left([p].[LastName], @Value), @Value_1, Len(Left([p].[LastName], @Value)))) + @Value_1 - 1
	END - 1 = 4 AND
	[p].[PersonID] = 2

