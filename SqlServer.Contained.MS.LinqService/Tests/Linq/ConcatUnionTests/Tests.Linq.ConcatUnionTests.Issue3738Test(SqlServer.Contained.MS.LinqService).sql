BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	N'I-' + CAST([x].[PersonID] AS NVarChar(11)),
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL,
	N'QUASI-' + [x_1].[FirstName]
FROM
	[Person] [x_1]

