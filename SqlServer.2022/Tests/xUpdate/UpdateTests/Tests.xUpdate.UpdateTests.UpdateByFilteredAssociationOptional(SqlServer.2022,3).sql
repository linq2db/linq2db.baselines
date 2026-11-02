-- SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[a_AssociatedOptional]
SET
	[a_AssociatedOptional].[Note] = N'test'
FROM
	[FilteredMainTable] [m_1]
		LEFT JOIN [FilteredAssociatedTable] [a_AssociatedOptional] ON [m_1].[Id] = [a_AssociatedOptional].[Id] AND [a_AssociatedOptional].[Flag] = 1
WHERE
	[m_1].[Id] = @id

-- SqlServer.2022
SELECT
	[a].[Note]
FROM
	[FilteredAssociatedTable] [a]
ORDER BY
	[a].[Id]

