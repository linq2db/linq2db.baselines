BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#TestTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TestTable]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#TestTable] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#TestTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TestTable]

