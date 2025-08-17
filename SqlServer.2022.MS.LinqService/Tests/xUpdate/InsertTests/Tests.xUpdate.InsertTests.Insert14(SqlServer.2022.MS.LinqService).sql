BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'Insert14' + (
		SELECT
			[p].[FirstName]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	),
	N'Shepard',
	'M'
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

