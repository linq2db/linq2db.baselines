﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[FirstName] + '/' + [p_1].[LastName]
FROM
	[Person] [p_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[FirstName] + '/' + [p].[LastName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[FirstName]
FROM
	[Person] [p_1]

