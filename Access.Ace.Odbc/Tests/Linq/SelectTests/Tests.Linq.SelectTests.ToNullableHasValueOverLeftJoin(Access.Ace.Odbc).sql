-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[NullableLeftJoinTable] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[l].[Value1]
FROM
	[NullableLeftJoinTable] [p]
		LEFT JOIN [NullableLeftJoinTable] [l] ON ([l].[Id] = [p].[Id] + 1)

