﻿BeforeExecute
-- SqlServer.2014

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
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
-- SqlServer.2014

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

