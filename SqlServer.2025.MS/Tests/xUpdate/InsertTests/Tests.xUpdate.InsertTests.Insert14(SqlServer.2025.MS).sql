BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

