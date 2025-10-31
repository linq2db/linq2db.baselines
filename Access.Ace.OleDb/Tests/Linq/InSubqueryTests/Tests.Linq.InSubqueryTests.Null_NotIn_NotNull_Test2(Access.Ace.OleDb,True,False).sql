-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)

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

