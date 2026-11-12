-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 3

UPDATE
	[MainTable] [a_MainOptional],
	[AssociatedTable] [p]
SET
	[a_MainOptional].[Field] = 'test'
WHERE
	[p].[Id] = @id AND [p].[Id] = [a_MainOptional].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

