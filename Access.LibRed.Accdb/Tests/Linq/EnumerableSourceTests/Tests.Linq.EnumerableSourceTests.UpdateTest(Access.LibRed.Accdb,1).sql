-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(2,'Janet Updated'), (3,'Doe Updated')
		) [r]([Id], [Value]) ON ([t].[Id] = [r].[Id])
SET
	[t].[Value] = [r].[Value]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

