-- SqlServer.2008.MS SqlServer.2008
SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added])
FROM
	[vb_activity] [f]
		INNER JOIN [vb_activity_person] [a_Person] ON [f].[personid] = [a_Person].[personid]
WHERE
	[f].[added] >= CAST(N'2017-01-01' AS DateTime2)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

