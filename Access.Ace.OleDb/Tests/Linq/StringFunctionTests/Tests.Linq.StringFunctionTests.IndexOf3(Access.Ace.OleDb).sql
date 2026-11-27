-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 3
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 7
DECLARE @s VarWChar(1) -- String
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
	InStr(@Value, Left([p].[LastName], @Value_1), @s, 1) - 1 = 4 AND
	[p].[PersonID] = 2

