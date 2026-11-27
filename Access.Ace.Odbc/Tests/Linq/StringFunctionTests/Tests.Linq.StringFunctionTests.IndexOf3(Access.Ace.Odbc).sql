-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 3
DECLARE @Value Int -- Int32
SET     @Value = 7
DECLARE @s NVarChar(1) -- String
SET     @s = 'e'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	InStr(?, Left([p].[LastName], ?), ?, 1) - 1 = 4 AND
	[p].[PersonID] = 2

