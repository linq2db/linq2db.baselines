BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[##IsGlobalTemporaryTable] [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [##IsGlobalTemporaryTable]

