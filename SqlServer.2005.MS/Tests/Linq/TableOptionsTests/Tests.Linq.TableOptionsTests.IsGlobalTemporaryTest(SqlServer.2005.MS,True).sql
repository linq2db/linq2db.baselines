BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[##IsGlobalTemporaryTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[##IsGlobalTemporaryTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[##IsGlobalTemporaryTable]

