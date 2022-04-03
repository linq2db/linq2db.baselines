BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = N'John' AND [p].[LastName] = N'Shepard'

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

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
	N'M'
)

SELECT SCOPE_IDENTITY()

