BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	IIF([t].[Nullable1] IS NULL, IIF([t].[Nullable2] IS NULL, IIF([t].[Nullable3] IS NULL, [t].[Id], [t].[Nullable3]), [t].[Nullable2]), [t].[Nullable1]),
	IIF([t].[Nullable2] IS NULL, IIF([t].[Nullable1] IS NULL, IIF([t].[Nullable3] IS NULL, [t].[Id], [t].[Nullable3]), [t].[Nullable1]), [t].[Nullable2]),
	IIF([t].[Nullable2] IS NULL, IIF([t].[Nullable3] IS NULL, IIF([t].[Nullable1] IS NULL, [t].[Id], [t].[Nullable1]), [t].[Nullable3]), [t].[Nullable2]),
	IIF([t].[Nullable3] IS NULL, IIF([t].[Nullable1] IS NULL, IIF([t].[Nullable2] IS NULL, [t].[Id], [t].[Nullable2]), [t].[Nullable1]), [t].[Nullable3]),
	IIF([t].[Nullable3] IS NULL, IIF([t].[Nullable2] IS NULL, IIF([t].[Nullable1] IS NULL, [t].[Id], [t].[Nullable1]), [t].[Nullable2]), [t].[Nullable3]),
	[t].[Id],
	IIF([t].[Nullable1] IS NULL, [t].[Id], [t].[Nullable1]),
	IIF([t].[Nullable1] IS NULL, IIF([t].[Nullable2] IS NULL, [t].[Id], [t].[Nullable2]), [t].[Nullable1])
FROM
	[CoalesceNullableFields] [t]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Nullable1],
	[t1].[Nullable2],
	[t1].[Nullable3]
FROM
	[CoalesceNullableFields] [t1]

