BeforeExecute
-- SqlServer.2014

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2014

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

