BeforeExecute
-- SqlServer.2008

CREATE TABLE [##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[##IsGlobalTemporaryTable] [t1]

BeforeExecute
-- SqlServer.2008

DROP TABLE [##IsGlobalTemporaryTable]

