-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] NOT IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)
ORDER BY
	[t].[ID]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

