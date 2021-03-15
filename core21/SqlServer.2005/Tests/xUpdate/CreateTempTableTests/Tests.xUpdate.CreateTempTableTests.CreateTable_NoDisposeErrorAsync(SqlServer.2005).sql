BeforeExecute
-- SqlServer.2005 (asynchronously)

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- SqlServer.2005 (asynchronously)

CREATE TABLE [#TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005 (asynchronously)

DROP TABLE [#TempTable]

BeforeExecute
-- SqlServer.2005 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NOT NULL)
	DROP TABLE [#TempTable]

