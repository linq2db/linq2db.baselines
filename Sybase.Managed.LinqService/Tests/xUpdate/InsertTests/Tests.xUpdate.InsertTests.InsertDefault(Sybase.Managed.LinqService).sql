BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [Person]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'InsertDefault'

