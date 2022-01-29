BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = N'InsertDefault'

