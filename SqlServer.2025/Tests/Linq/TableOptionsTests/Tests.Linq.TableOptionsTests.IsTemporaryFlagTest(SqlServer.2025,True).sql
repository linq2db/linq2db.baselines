-- SqlServer.2025

CREATE TABLE [tempdb].[TestSchema].[#IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb].[TestSchema].[#IsTemporaryTable] [t1]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb].[TestSchema].[#IsTemporaryTable]

