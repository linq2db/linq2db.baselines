﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[gr].[FirstName],
	[gr].[LastName],
	SUM([gr].[PersonID])
FROM
	[Person] [gr]
GROUP BY
	[gr].[FirstName],
	[gr].[LastName]

