BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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

