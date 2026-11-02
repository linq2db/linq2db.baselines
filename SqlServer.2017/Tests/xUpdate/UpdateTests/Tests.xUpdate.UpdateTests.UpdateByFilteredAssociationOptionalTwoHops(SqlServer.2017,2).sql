-- SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 2

UPDATE
	[a_MainOptional]
SET
	[a_MainOptional].[Field] = N'test'
FROM
	[FilteredMainTable] [m_1]
		LEFT JOIN [FilteredAssociatedTable] [a_AssociatedOptional] ON [m_1].[Id] = [a_AssociatedOptional].[Id] AND [a_AssociatedOptional].[Flag] = 1
		LEFT JOIN [FilteredMainTable] [a_MainOptional] ON [a_AssociatedOptional].[Id] = [a_MainOptional].[Id]
WHERE
	[m_1].[Id] = @id

-- SqlServer.2017
SELECT
	[m_1].[Field]
FROM
	[FilteredMainTable] [m_1]
ORDER BY
	[m_1].[Id]

