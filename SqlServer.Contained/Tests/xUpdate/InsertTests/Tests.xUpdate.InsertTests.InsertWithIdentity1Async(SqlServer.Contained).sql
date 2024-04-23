﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'John',
	N'Shepard',
	N'M'
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = N'John' AND [p].[LastName] = N'Shepard'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

