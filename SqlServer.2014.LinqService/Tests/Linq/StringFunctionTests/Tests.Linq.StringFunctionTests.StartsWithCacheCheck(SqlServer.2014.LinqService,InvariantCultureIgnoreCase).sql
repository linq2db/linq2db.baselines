﻿BeforeExecute
--  SqlServer.2014

SELECT TOP (2)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
--  SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'joh%' ESCAPE N'~' AND
	[p].[PersonID] = 1

BeforeExecute
--  SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) NOT LIKE N'joh%' ESCAPE N'~' AND
	[p].[PersonID] = 1

