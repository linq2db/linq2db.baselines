BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added])
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON [f].[personid] = [a_Person].[personid]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [f].[added]) >= strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', '2017-01-01 00:00:00.000'))
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

