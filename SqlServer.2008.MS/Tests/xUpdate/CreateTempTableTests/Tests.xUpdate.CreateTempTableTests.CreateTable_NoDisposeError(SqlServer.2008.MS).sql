BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DROP TABLE [tempdb]..[#TempTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TempTable]

