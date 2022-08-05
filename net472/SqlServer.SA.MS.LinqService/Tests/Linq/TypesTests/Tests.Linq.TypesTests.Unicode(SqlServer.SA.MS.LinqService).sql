﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'擊敗奴隸',
	N'Юникодкин',
	N'M'
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = N'擊敗奴隸' AND [p].[LastName] = N'Юникодкин'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

