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
	[t1].[Id],
	[t1].[Value] as [Value_1],
	[t1].[Id] as [Id_1],
	[t1].[Value] as [Value_2],
	[t1].[Id] as [Id_2],
	[t1].[Value] as [Value_3]
FROM
	[TestTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [TestTable]

