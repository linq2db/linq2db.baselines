BeforeExecute
--  SqlServer.2022

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
--  SqlServer.2022 (asynchronously)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'John',
	N'Shepard',
	'M'
)

SELECT SCOPE_IDENTITY()

BeforeExecute
--  SqlServer.2022

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

