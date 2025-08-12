BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t]
WHERE
	((
		SELECT
			[x].[BoolValue]
		FROM
			[WhereWithBool] [x]
		WHERE
			[x].[Id] = 1
	))

