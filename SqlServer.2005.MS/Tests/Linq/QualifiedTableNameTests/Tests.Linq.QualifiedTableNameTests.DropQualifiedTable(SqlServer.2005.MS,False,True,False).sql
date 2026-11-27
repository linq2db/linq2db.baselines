-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2005.MS SqlServer.2005
IF (OBJECT_ID(N'[QualifiedNameTable2]', N'U') IS NOT NULL)
	DROP TABLE [QualifiedNameTable2]

-- SqlServer.2005.MS SqlServer.2005
CREATE TABLE [QualifiedNameTable2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_QualifiedNameTable2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2005.MS SqlServer.2005
DROP TABLE [TestDataMS]..[QualifiedNameTable2]

