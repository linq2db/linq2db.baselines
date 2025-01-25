BeforeExecute
-- SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[a_MainOptional]
SET
	[a_MainOptional].[Field] = N'test'
FROM
	[AssociatedTable] [p]
		LEFT JOIN [MainTable] [a_MainOptional] ON [p].[Id] = [a_MainOptional].[Id]
WHERE
	[p].[Id] = @id

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

