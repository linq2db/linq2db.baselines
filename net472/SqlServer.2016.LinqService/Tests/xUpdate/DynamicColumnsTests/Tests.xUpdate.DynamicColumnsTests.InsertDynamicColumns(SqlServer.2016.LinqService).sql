BeforeExecute
-- SqlServer.2016 SqlServer.2012

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
-- SqlServer.2016 SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = N'John' AND [c_1].[LastName] = N'The Dynamic'

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[LastName] = N'The Dynamic'

