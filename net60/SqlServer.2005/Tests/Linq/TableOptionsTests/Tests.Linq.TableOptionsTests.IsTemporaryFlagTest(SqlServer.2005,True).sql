BeforeExecute
-- SqlServer.2005

CREATE TABLE [tempdb].[TestSchema].[#IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb].[TestSchema].[#IsTemporaryTable] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb].[TestSchema].[#IsTemporaryTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb].[TestSchema].[#IsTemporaryTable]

