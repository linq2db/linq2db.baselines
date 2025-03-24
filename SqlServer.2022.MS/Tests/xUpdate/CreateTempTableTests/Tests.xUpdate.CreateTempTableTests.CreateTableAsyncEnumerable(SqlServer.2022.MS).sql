﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022 (asynchronously)

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
INSERT ASYNC BULK [TempTable](ID)

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [TempTable]

