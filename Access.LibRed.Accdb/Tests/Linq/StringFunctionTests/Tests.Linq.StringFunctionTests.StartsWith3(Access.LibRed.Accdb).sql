-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @str NVarChar(7) -- String
SET     @str = 'John123'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	@str LIKE (Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace([p].[FirstName], '[', '[[]'), '_', '[_]'), '?', '[?]'), '*', '[*]'), '%', '[%]'), '#', '[#]'), '-', '[-]'), '!', '[!]') + '%')

