-- SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[a_MainOptional]
SET
	[a_MainOptional].[Field] = N'test'
FROM
	[NullableKeyMainTable] [m_1]
		LEFT JOIN [NullableKeyAssociatedTable] [a_AssociatedOptional] ON [m_1].[Ref] = [a_AssociatedOptional].[Ref] OR [m_1].[Ref] IS NULL AND [a_AssociatedOptional].[Ref] IS NULL
		LEFT JOIN [NullableKeyMainTable] [a_MainOptional] ON [a_AssociatedOptional].[Ref] = [a_MainOptional].[Ref] OR [a_AssociatedOptional].[Ref] IS NULL AND [a_MainOptional].[Ref] IS NULL
WHERE
	[m_1].[Id] = @id

-- SqlServer.2016
SELECT
	[m_1].[Field]
FROM
	[NullableKeyMainTable] [m_1]
ORDER BY
	[m_1].[Id]

