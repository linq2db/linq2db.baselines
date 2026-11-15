-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(3,'Janet Updated'), (4,'Doe Updated')
		) [r]([Id], [Value]) ON ([t].[Id] = [r].[Id])
SET
	[t].[Value] = [r].[Value]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

