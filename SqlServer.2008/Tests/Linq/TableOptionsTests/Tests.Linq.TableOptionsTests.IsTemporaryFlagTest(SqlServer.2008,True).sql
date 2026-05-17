-- SqlServer.2008

CREATE TABLE [tempdb].[TestSchema].[#IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb].[TestSchema].[#IsTemporaryTable] [t1]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb].[TestSchema].[#IsTemporaryTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb].[TestSchema].[#IsTemporaryTable]

