BeforeExecute
-- SqlServer.2012

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([VBIt].[added])
FROM
	[activity649] [VBIt]
		INNER JOIN [person649] [a_Person] ON [VBIt].[personid] = [a_Person].[personid]
WHERE
	[VBIt].[added] >= DATETIME2FROMPARTS(2017, 1, 1, 0, 0, 0, 0, 3)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

