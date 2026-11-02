-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[FilteredAssociatedTable] [a_AssociatedOptional],
	[FilteredMainTable] [m_1]
SET
	[a_AssociatedOptional].[Note] = 'test'
WHERE
	[m_1].[Id] = ? AND [m_1].[Id] = [a_AssociatedOptional].[Id] AND
	[a_AssociatedOptional].[Flag]

-- Access.Jet.Odbc AccessODBC
SELECT
	[a].[Note]
FROM
	[FilteredAssociatedTable] [a]
ORDER BY
	[a].[Id]

