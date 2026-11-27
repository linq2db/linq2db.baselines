-- SqlServer.Contained SqlServer.2025
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.Contained SqlServer.2025
DROP TABLE IF EXISTS [QualifiedNameTable2]

-- SqlServer.Contained SqlServer.2025
CREATE TABLE [QualifiedNameTable2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_QualifiedNameTable2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.Contained SqlServer.2025
DROP TABLE [dbo].[QualifiedNameTable2]

