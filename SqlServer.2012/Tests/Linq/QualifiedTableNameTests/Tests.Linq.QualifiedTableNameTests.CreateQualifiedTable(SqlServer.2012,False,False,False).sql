-- SqlServer.2012
IF (OBJECT_ID(N'[QualifiedNameTable2]', N'U') IS NOT NULL)
	DROP TABLE [QualifiedNameTable2]

-- SqlServer.2012
CREATE TABLE [QualifiedNameTable2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_QualifiedNameTable2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2012
IF (OBJECT_ID(N'[QualifiedNameTable2]', N'U') IS NOT NULL)
	DROP TABLE [QualifiedNameTable2]

