BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [##TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[##TestTable]', N'U') IS NOT NULL)
	DROP TABLE [##TestTable]

