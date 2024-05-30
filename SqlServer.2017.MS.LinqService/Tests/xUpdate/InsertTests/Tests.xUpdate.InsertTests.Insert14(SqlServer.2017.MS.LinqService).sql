﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
	N'M'
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Insert14%' ESCAPE N'~'

