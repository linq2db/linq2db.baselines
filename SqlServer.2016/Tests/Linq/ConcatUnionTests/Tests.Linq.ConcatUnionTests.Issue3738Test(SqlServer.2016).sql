﻿BeforeExecute
-- SqlServer.2016

SELECT
	N'I-' + CAST([x].[PersonID] AS VarChar(11)),
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL,
	N'QUASI-' + [x_1].[FirstName]
FROM
	[Person] [x_1]

