BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[##IsGlobalTemporaryTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [##IsGlobalTemporaryTable]

