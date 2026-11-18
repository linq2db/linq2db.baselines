-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [TestTable]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[sub].[Id_1] as [Id],
	[sub].[Value_1],
	[sub].[Id] as [Id_1],
	[sub].[Value_2],
	[t3].[Id] as [Id_2],
	[t3].[Value] as [Value_3]
FROM
	(
		SELECT
			[t2].[Id],
			[t1].[Id] as [Id_1],
			[t1].[Value] as [Value_1],
			[t2].[Value] as [Value_2]
		FROM
			[TestTable] [t1],
			[TestTable] [t2]
	) [sub]
		INNER JOIN [TestTable] [t3] ON ([sub].[Id] = [t3].[Id])
WHERE
	[sub].[Id_1] = [sub].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [TestTable]

