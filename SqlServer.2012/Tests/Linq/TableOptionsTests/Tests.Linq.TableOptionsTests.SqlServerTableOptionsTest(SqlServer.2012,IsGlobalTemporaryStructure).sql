BeforeExecute
-- SqlServer.2012

CREATE TABLE [tempdb]..[##TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##TestTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[##TestTable]

