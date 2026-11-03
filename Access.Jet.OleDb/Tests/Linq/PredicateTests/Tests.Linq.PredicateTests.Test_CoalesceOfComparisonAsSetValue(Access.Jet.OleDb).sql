-- Access.Jet.OleDb AccessOleDb
UPDATE
	[NullableFlagTable] [t1]
SET
	[t1].[Flag] = [t1].[A] = [t1].[B] OR [t1].[A] IS NULL AND [t1].[B] IS NULL

-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Flag]
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

