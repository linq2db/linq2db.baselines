-- SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 2

UPDATE
	[a_AssociatedOptional]
SET
	[a_AssociatedOptional].[Note] = N'test'
FROM
	[FilteredMainTable] [m_1]
		LEFT JOIN [FilteredAssociatedTable] [a_AssociatedOptional] ON [m_1].[Id] = [a_AssociatedOptional].[Id] AND [a_AssociatedOptional].[Flag] = 1
WHERE
	[m_1].[Id] = @id

-- SqlServer.2017
SELECT
	[a].[Note]
FROM
	[FilteredAssociatedTable] [a]
ORDER BY
	[a].[Id]

