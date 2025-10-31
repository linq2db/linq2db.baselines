-- SqlCe

DROP TABLE [TestTable]

-- SqlCe

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1],
	[t2].[Id] as [Id_1],
	[t2].[Value] as [Value_2],
	[t3].[Id] as [Id_2],
	[t3].[Value] as [Value_3]
FROM
	[TestTable] [t1]
		CROSS JOIN [TestTable] [t2]
		INNER JOIN [TestTable] [t3] ON [t2].[Id] = [t3].[Id]
WHERE
	[t1].[Id] = [t2].[Id]

-- SqlCe

DROP TABLE [TestTable]

