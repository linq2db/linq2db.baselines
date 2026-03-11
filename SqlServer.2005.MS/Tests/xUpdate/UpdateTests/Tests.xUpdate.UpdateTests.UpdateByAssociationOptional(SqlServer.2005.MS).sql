-- SqlServer.2005.MS SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[a_MainOptional]
SET
	[a_MainOptional].[Field] = N'test'
FROM
	[MainTable] [t1]
		LEFT JOIN [AssociatedTable] [a_AssociatedOptional] ON [t1].[Id] = [a_AssociatedOptional].[Id]
		LEFT JOIN [MainTable] [a_MainOptional] ON [a_AssociatedOptional].[Id] = [a_MainOptional].[Id]
WHERE
	[t1].[Id] = @id

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

