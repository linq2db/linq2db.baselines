BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added])
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON [f].[personid] = [a_Person].[personid]
WHERE
	[f].[added] >= DATETIMEFROMPARTS(2017, 1, 1, 0, 0, 0, 0)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

