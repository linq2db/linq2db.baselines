BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

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
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = N'InsertDefault'

