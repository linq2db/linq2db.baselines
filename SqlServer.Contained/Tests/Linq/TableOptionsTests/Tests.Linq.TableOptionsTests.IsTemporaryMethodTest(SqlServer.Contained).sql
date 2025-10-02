BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

