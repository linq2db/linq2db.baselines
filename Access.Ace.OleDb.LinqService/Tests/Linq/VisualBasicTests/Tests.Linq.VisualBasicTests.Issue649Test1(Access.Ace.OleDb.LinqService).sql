BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([VBIt].[added])
FROM
	[activity649] [VBIt]
		INNER JOIN [person649] [a_Person] ON ([VBIt].[personid] = [a_Person].[personid])
WHERE
	[VBIt].[added] >= DateSerial(2017, 1, 1)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

