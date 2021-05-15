BeforeExecute
-- SqlServer.2012

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	Lower([t1].[FirstName]) LIKE N'insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2012

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	Lower([t1].[FirstName]) LIKE N'insert14%' ESCAPE N'~'

