BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [##TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[tempdb]..[##TestTable]', N'U') IS NOT NULL)
	DROP TABLE [##TestTable]

