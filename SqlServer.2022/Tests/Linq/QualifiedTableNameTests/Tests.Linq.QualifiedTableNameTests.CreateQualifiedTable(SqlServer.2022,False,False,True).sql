-- SqlServer.2022
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2022
DROP TABLE IF EXISTS [QualifiedNameTable2]

-- SqlServer.2022
CREATE TABLE [dbo].[QualifiedNameTable2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_QualifiedNameTable2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2022
DROP TABLE IF EXISTS [QualifiedNameTable2]

