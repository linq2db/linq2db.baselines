﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'joh%' ESCAPE N'~' AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) NOT LIKE N'joh%' ESCAPE N'~' AND
	[p].[PersonID] = 1

