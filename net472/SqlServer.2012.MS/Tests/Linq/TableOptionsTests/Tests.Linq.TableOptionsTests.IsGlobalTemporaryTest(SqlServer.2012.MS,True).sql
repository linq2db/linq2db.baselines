BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[##IsGlobalTemporaryTable] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##IsGlobalTemporaryTable]', N'U') IS NOT NULL)
	DROP TABLE [##IsGlobalTemporaryTable]

