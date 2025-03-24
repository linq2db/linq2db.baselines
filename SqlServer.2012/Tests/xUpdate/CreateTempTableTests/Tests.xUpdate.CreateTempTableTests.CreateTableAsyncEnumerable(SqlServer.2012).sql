﻿BeforeExecute
--  SqlServer.2012

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
--  SqlServer.2012

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
--  SqlServer.2012 (asynchronously)

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
INSERT ASYNC BULK [TempTable](ID)

BeforeExecute
--  SqlServer.2012

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
--  SqlServer.2012 (asynchronously)

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

