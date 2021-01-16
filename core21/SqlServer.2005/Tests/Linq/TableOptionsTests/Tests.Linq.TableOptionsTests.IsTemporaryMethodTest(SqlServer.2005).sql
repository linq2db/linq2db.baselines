BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#TestTable]', N'U') IS NOT NULL)
	DROP TABLE [#TestTable]

BeforeExecute
-- SqlServer.2005

CREATE TABLE [#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [#TestTable]

