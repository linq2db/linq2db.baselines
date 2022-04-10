BeforeExecute
-- SqlServer.2016

CREATE TABLE [TestSchema].[#IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestSchema].[#IsTemporaryTable] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TestSchema].[#IsTemporaryTable]

