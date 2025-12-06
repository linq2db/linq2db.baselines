-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectBOptional].[Id],
	[a_ObjectBOptional].[FK],
	[a_ObjectC].[Id],
	[a_ObjectC].[FK]
FROM
	([EntityA] [t1]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON ([t1].[FK] = [a_ObjectBOptional].[Id]))
		LEFT JOIN [EntityC] [a_ObjectC] ON ([a_ObjectBOptional].[FK] = [a_ObjectC].[Id])

