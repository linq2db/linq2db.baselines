BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[##IsGlobalTemporaryTable] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[##IsGlobalTemporaryTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[##IsGlobalTemporaryTable]

