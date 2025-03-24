BeforeExecute
--  Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
--  Sybase.Managed Sybase (asynchronously)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

SELECT @@IDENTITY

BeforeExecute
--  Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

