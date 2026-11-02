-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	(
		SELECT
			[m_1].[Id],
			[a_MainOptional].[Id] as [Id_1],
			[a_MainOptional].[Field]
		FROM
			[FilteredMainTable] [a_MainOptional],
			[FilteredMainTable] [m_1]
	) [cross_1]
		INNER JOIN (
			SELECT
				[a_AssociatedOptional].[Id]
			FROM
				[FilteredAssociatedTable] [a_AssociatedOptional]
			WHERE
				[a_AssociatedOptional].[Flag]
		) [a_AssociatedOptional_1] ON ([cross_1].[Id] = [a_AssociatedOptional_1].[Id])
SET
	[cross_1].[Field] = 'test'
WHERE
	[cross_1].[Id] = @id AND [a_AssociatedOptional_1].[Id] = [cross_1].[Id_1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[m_1].[Field]
FROM
	[FilteredMainTable] [m_1]
ORDER BY
	[m_1].[Id]

