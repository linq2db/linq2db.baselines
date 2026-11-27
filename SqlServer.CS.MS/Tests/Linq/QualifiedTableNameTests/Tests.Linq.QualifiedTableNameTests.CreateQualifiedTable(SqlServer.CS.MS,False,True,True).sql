-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS.MS SqlServer.2025
DROP TABLE IF EXISTS [QualifiedNameTable2]

-- SqlServer.CS.MS SqlServer.2025
CREATE TABLE [TestDataMSCS].[dbo].[QualifiedNameTable2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_QualifiedNameTable2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.CS.MS SqlServer.2025
DROP TABLE IF EXISTS [QualifiedNameTable2]

