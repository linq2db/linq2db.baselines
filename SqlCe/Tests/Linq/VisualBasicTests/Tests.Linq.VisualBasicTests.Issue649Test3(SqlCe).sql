BeforeExecute
-- SqlCe

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added]) as [MAX_1]
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON [f].[personid] = [a_Person].[personid]
WHERE
	[f].[added] >= CAST('2017-01-01' AS DateTime)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

