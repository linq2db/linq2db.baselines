﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[PersonID],
	[p_1].[FirstName],
	[p_1].[LastName]
FROM
	[Person] [p_1]

