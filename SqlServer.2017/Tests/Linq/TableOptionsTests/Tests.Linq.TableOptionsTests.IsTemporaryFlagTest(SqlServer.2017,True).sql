-- SqlServer.2017

CREATE TABLE [tempdb].[TestSchema].[#IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb].[TestSchema].[#IsTemporaryTable] [t1]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb].[TestSchema].[#IsTemporaryTable]

