﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

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
	'M'
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

