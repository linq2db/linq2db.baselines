-- SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[a_MainRequired]
SET
	[a_MainRequired].[Field] = N'test'
FROM
	[AssociatedTable] [p]
		INNER JOIN [MainTable] [a_MainRequired] ON [p].[Id] = [a_MainRequired].[Id]
WHERE
	[p].[Id] = @id

-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

