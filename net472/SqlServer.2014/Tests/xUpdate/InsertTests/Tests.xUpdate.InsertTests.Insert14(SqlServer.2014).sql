BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'Insert14' + (
		SELECT TOP (@take)
			[p].[FirstName]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	),
	N'Shepard',
	N'M'
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

