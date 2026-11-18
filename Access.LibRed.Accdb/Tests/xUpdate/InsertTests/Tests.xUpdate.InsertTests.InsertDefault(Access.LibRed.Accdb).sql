-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [Person]
(
	[FirstName],
	[MiddleName],
	[LastName],
	[Gender]
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'InsertDefault'

