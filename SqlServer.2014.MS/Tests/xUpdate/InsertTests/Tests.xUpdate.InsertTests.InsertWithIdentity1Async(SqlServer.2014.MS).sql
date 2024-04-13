﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

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
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

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
-- SqlServer.2014.MS SqlServer.2014

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

