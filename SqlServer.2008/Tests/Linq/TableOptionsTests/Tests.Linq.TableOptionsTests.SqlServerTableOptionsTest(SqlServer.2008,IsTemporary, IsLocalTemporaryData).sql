BeforeExecute
-- SqlServer.2008

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#TestTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TestTable]

