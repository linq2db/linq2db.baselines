-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2014.MS SqlServer.2014
IF (OBJECT_ID(N'[QualifiedNameTable2]', N'U') IS NOT NULL)
	DROP TABLE [QualifiedNameTable2]

-- SqlServer.2014.MS SqlServer.2014
CREATE TABLE [QualifiedNameTable2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_QualifiedNameTable2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2014.MS SqlServer.2014
DROP TABLE [dbo].[QualifiedNameTable2]

