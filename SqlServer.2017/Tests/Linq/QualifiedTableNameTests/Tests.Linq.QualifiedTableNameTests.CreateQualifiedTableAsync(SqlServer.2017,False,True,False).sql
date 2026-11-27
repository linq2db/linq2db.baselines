-- SqlServer.2017
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2017
DROP TABLE IF EXISTS [QualifiedNameTable2]

-- SqlServer.2017
CREATE TABLE [TestData]..[QualifiedNameTable2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_QualifiedNameTable2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2017
DROP TABLE IF EXISTS [QualifiedNameTable2]

