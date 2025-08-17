BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	MAX([r].[PersonID])
FROM
	[Person] [r]
UNION ALL
SELECT
	[r_1].[PersonID]
FROM
	[Person] [r_1]

