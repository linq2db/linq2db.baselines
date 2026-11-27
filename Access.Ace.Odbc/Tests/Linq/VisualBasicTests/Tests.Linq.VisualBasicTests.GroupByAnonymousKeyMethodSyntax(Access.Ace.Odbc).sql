-- Access.Ace.Odbc AccessODBC
SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added])
FROM
	[vb_activity] [f]
		INNER JOIN [vb_activity_person] [a_Person] ON ([f].[personid] = [a_Person].[personid])
WHERE
	[f].[added] >= DateSerial(2017, 1, 1)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

