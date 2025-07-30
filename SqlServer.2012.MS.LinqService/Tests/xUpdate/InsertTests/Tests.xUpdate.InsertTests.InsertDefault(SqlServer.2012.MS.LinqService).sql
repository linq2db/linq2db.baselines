BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
	'M'
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = N'InsertDefault'

