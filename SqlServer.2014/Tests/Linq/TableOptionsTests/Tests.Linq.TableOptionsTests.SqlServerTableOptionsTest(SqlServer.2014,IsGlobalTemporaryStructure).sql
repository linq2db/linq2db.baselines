-- SqlServer.2014

CREATE TABLE [tempdb]..[##TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[##TestTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[##TestTable]

