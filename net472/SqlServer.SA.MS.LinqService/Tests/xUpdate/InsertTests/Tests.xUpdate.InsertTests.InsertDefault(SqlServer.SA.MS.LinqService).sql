BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Person]
(
	[FirstName],
	[MiddleName],
	[LastName],
	[Gender]
)
VALUES
(
	N'InsertDefault',
	DEFAULT,
	N'InsertDefault',
	N'M'
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = N'InsertDefault'

