BeforeExecute
-- SqlCe

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([VBIt].[added]) as [LastAdded]
FROM
	[activity649] [VBIt]
		INNER JOIN [person649] [a_Person] ON [VBIt].[personid] = [a_Person].[personid]
WHERE
	[VBIt].[added] >= CAST('2017-01-01' AS DateTime)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

