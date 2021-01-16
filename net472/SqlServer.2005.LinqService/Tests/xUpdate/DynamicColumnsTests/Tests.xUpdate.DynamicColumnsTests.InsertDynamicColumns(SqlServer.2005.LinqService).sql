BeforeExecute
-- SqlServer.2005

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'John',
	N'The Dynamic',
	N'M'
)

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[LastName] = N'The Dynamic'

