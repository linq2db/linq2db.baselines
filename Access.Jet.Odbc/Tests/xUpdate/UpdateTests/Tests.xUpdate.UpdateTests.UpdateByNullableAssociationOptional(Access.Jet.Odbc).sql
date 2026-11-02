-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	(
		SELECT
			[m_1].[Ref] as [Ref_1],
			[m_1].[Id],
			[a_MainOptional].[Ref] as [Ref_2],
			[a_MainOptional].[Field]
		FROM
			[NullableKeyMainTable] [a_MainOptional],
			[NullableKeyMainTable] [m_1]
	) [cross_1]
		LEFT JOIN [NullableKeyAssociatedTable] [a_AssociatedOptional] ON ([cross_1].[Ref_1] = [a_AssociatedOptional].[Ref] OR [cross_1].[Ref_1] IS NULL AND [a_AssociatedOptional].[Ref] IS NULL)
SET
	[cross_1].[Field] = 'test'
WHERE
	[cross_1].[Id] = ? AND ([a_AssociatedOptional].[Ref] = [cross_1].[Ref_2] OR [a_AssociatedOptional].[Ref] IS NULL AND [cross_1].[Ref_2] IS NULL)

-- Access.Jet.Odbc AccessODBC
SELECT
	[m_1].[Field]
FROM
	[NullableKeyMainTable] [m_1]
ORDER BY
	[m_1].[Id]

