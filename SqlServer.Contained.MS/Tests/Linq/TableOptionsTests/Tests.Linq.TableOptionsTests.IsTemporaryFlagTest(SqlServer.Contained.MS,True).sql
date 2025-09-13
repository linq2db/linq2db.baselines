BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb].[TestSchema].[#IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb].[TestSchema].[#IsTemporaryTable] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb].[TestSchema].[#IsTemporaryTable]

