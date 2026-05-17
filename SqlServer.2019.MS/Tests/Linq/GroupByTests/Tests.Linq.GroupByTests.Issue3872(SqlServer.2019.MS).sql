-- SqlServer.2019.MS SqlServer.2019

SELECT
	MAX([r].[PersonID])
FROM
	[Person] [r]
UNION ALL
SELECT
	[r_1].[PersonID]
FROM
	[Person] [r_1]

