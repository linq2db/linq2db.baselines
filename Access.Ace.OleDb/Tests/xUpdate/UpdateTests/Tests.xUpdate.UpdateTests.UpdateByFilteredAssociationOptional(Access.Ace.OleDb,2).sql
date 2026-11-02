-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 2

UPDATE
	[FilteredAssociatedTable] [a_AssociatedOptional],
	[FilteredMainTable] [m_1]
SET
	[a_AssociatedOptional].[Note] = 'test'
WHERE
	[m_1].[Id] = @id AND [m_1].[Id] = [a_AssociatedOptional].[Id] AND
	[a_AssociatedOptional].[Flag]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[a].[Note]
FROM
	[FilteredAssociatedTable] [a]
ORDER BY
	[a].[Id]

