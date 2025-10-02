BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added])
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON [f].[personid] = [a_Person].[personid]
WHERE
	[f].[added] >= DATETIME2FROMPARTS(2017, 1, 1, 0, 0, 0, 0, 3)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

