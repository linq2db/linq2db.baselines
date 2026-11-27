-- SqlServer.2014
SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added])
FROM
	[vb_activity] [f]
		INNER JOIN [vb_activity_person] [a_Person] ON [f].[personid] = [a_Person].[personid]
WHERE
	[f].[added] >= DATETIME2FROMPARTS(2017, 1, 1, 0, 0, 0, 0, 3)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

