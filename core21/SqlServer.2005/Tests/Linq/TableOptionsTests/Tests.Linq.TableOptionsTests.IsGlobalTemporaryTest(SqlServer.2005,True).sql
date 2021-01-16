BeforeExecute
-- SqlServer.2005

CREATE TABLE [##IsGlobalTemporaryTable]
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
	[##IsGlobalTemporaryTable] [t1]

BeforeExecute
-- SqlServer.2005

DROP TABLE [##IsGlobalTemporaryTable]

