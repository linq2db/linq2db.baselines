-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 2

UPDATE
	[FilteredAssociatedTable]
SET
	[Note] = 'test'
FROM
	[FilteredMainTable] [m_1]
WHERE
	[m_1].[Id] = @id AND [m_1].[Id] = [FilteredAssociatedTable].[Id] AND
	[FilteredAssociatedTable].[Flag] = 1

-- Sybase.Managed Sybase
SELECT
	[a].[Note]
FROM
	[FilteredAssociatedTable] [a]
ORDER BY
	[a].[Id]

