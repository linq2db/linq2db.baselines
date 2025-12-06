-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'InsertDefault'

